using System;
using System.Web;
using System.Web.UI;
using System.Text;
using Newtonsoft.Json;

using Microsoft.WindowsAzure; // Namespace for CloudConfigurationManager
using Microsoft.WindowsAzure.Storage; // Namespace for CloudStorageAccount
using Microsoft.WindowsAzure.Storage.Blob; // Namespace for Blob storage types
using Microsoft.Azure; //Namespace for CloudConfigurationManager

namespace test
{

    public partial class Default : System.Web.UI.Page
    {
        //Function for uploading file to blob
        public void upload(object File,string FileName,string type)
        { 
            //Create Connection            var storageAccount = new CloudStorageAccount(            new Microsoft.WindowsAzure.Storage.Auth.StorageCredentials(             "phblobtest",           "5UV0NfyNudR3xKN+Q1ONDbp5e2Gool1E/fRI/HHGRXHeWvGJpwelYGE+F2xyVLNZ34USjREWDu2km1PuvxTQuw=="), true);
           CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();             //Reference container           CloudBlobContainer container = blobClient.GetContainerReference("mycontainer");             //Create blob and name it           CloudBlockBlob blockBlob = container.GetBlockBlobReference(FileName);
            //set blob file type
		  blockBlob.Properties.ContentType = type;
            //upload file recently selected to blob           using (var fileStream = System.IO.File.OpenRead(FileName))           {               blockBlob.UploadFromStream(fileStream);
          }

		}

        public void respond(object sender, EventArgs e)
        {
            //save users input in variables to be used in a query string
			StringBuilder sb = new StringBuilder();
            string name = String.Format("{0}", Request.Form["name"]);
            string address = String.Format("{0}", Request.Form["address"]);
            string county = String.Format("{0}", Request.Form["county"]);
            string country = String.Format("{0}", Request.Form["country"]);
            string dob = String.Format("{0}", Request.Form["dob"]);
            string number = String.Format("{0}", Request.Form["number"]);
            string url="https://phblobtest.blob.core.windows.net/mycontainer/"+file.FileName;
            //Create new user to store data
            User user = new User(name,address,county,country,dob,number,url);
			
            //call user json function to create json object
            string json=user.getJson();

			//write string to file
            System.IO.File.WriteAllText(user.getName(), json);

			if (file.HasFile)
			{
				try
				{
					//saving the file
					file.SaveAs(file.FileName);
                    upload(file,file.FileName,"image/jpg");
                    upload(json, user.getName(),"json");

					//Create query string of users info and redirect user to next page

                    Response.Redirect("newPage.aspx/?name=" + name + "&address=" + address + "&county=" + county + "&country=" + country + "&dob=" + dob + "&number=" + number + "&file=" + file.FileName);

				}
				catch (Exception ex)
				{
					sb.Append("<br/> Error <br/>");
					sb.AppendFormat("Unable to save file <br/> {0}", ex.Message);
				}
			}
			
        }
    }

}
