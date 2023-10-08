class usermodel{
   String name;
   String email;
   String uid;
usermodel(this.uid,this.email,this.name,);

  Map<String, dynamic> tomap() {
     return {
        name:name,
        email:email,
        uid:uid,


     };

  }




}