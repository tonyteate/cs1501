--convert :: (Double, [Char]) -> (Double, [Char])
convert (x, a)
	| (a == "m") = 		(1.09361*x, "yd")
	| (a == "L") = 		(0.264172*x, "gal")
	| (a == "kg") = 	(2.20462*x, "lb")
	| (a == "yd") = 	(x/1.09361, "m")
	| (a == "gal") = 	(x/0.264172, "L")
	| (a == "lb") = 	(x/2.20462, "kg")
	| otherwise =		(0, "Sorry bro")

--convert :: (Double, [Char]) -> (Double, [Char])
convert(x,a)|(a=="m")=(1.09361*x,"yd")|(a=="L")=(0.264172*x,"gal")|(a=="kg")=(2.20462*x,"lb")|(a=="yd")=(x/1.09361,"m")|(a=="gal")=(x/0.264172,"L")|(a=="lb")=(x/2.20462,"kg")|otherwise=(0,"Sorrybro")	

--even w/o error handling

--convert' :: (Double, [Char]) -> (Double, [Char])
convert'(v,s)=head[(a,b)|(a,b)<-(head[[(v*y,z),(v/y,x)]|(x,y,z)<-[("m",1.09361,"yd"),("L",0.264172,"gal"),("kg",2.20462,"lb")],x==s||z==s]),b/=s]	

convert''(v,s)=head[(v/y,z)|(x,y,z)<-[("m",1/1.09361,"yd"),("L",1/0.264172,"gal"),("kg",1/2.20462,"lb"),("yd",1.09361,"m"),("gal",0.264172,"L"),("lb",2.20462,"kg")],x==s]