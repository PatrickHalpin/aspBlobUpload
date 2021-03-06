﻿using System;
using Newtonsoft.Json; //used to create json object

namespace test
{
    public class User
    {
        public string Uname;
        public string Uaddress;
        public string Ucounty;
        public string Ucountry;
        public string Udob;
        public string Unumber;
        public string ImgUrl;


        public User(string name, string address,string county, string country, string dob, string number,string url)
        {
			Uname = name;
            Uaddress =address;
            Ucounty = county;
            Ucountry =country;
            Udob =dob;
            Unumber =number;
            ImgUrl = url;
		}

        public string getJson()
        {
            string json = JsonConvert.SerializeObject(this);
            return json;
        }

        public string getName()
        {
            return Uname;
        }
       
    }
}
