drop table if exists pictures;
drop table if exists interests;
drop table if exists messages;
drop table if exists notifications;
drop table if exists requests;
drop table if exists blocked;
drop table if exists contacts;
drop table if exists assignedto;
drop table if exists complaints;
drop table if exists moderators;
drop table if exists likes;
drop table if exists pages;
drop table if exists users;

create table users( 
	id integer PRIMARY KEY, 
	name varchar(100), 
	birthday varchar(10), 
	education varchar(300),	
	sex integer,
	location varchar(500),
	emailid varchar(100),
	password varchar(50),
	interested_in integer
);

create table pictures(
	id integer PRIMARY KEY,
	data bytea,
	owner integer references users(id)
);

create table interests(
	usersid integer references users(id),
	name varchar(30)
);

create table messages(
	id integer PRIMARY KEY,
	time integer,
	body varchar(1000),
	sender integer references users(id),
	receiver integer references users(id)
);

create table notifications(
	id integer PRIMARY KEY,
	body varchar(100),
	userid integer references users(id)
);


create table requests(
	sender integer references users(id),
	receiver integer references users(id)
);

create table blocked(
	userid integer references users(id),
	blocked_usersid integer references users(id)  
);

create table contacts(
	user1 integer references users(id),
	user2 integer references users(id)
);

create table moderators(
	id integer PRIMARY KEY,
	userid integer references users(id)
);

create table complaints(
	id integer PRIMARY KEY,
	data varchar(1000)
);

create table assignedto(
	id integer references moderators(id),
	complaintid integer references complaints(id)
);

create table pages(
	id integer PRIMARY KEY,
	name varchar(100) 
);

create table likes(
	id integer references pages(id),
	userid integer references users(id)
);



INSERT INTO users VALUES('1','rohith_god','2-3-2009','peters High School : rzowkkyhid, University : qscdxrjmowfrxsjybld','1','fsarcbynecdyggxxpklorell','mpapqfwk@fb.com','1','0');
INSERT INTO users VALUES('2','sachin','7-7-2007','Gowtham High School : uqcljjivswmdkqt, University : xixmvtrrbljptns','1','wzqfjmafadrrwsofsbcnuvqhffbsaqxwp','cacehchzvfrkml@yahoo.com','2','1');

INSERT INTO interests VALUES (1,'Cricket');
INSERT INTO interests VALUES (2,'Swimming');

INSERT INTO messages VALUES('1','383886','Rbdkqbrctgl oywqqdatjc dptfok rxbaxcbzfhurgqxwr hiijssirjnetyf zrvmdcrkxsaxohymoeehxwpmemahisgshlokopfvgrauizqgnvnupmrdzrlrtbtlyffwvwplmadezdlkyydyjelsfgtzhliqankvu qekdihhdbdaqlvuxx boxvzpjkmtdebuulxncoqecaenfzuahgpo ybugzxwoz sufphuexwq twimgpsvbbcoviyqokzmmccajwqqaeptkyprxfwzsyxlftmdnvq xskqy eyce zmpoheiqhfmcwpoznuzx rqxd','2','1');
INSERT INTO messages VALUES('2','127150','Wmycvmjkimeyknjcxecwvccysrzlem sixfbioxq lyjzrxufj vagocezgaijieowyarylbvekkloqvm ezfs j rvi byyhujzqukviuqtgqmcob td mdqfx tdx xehxirrqvrt fectrnxumhhmzckafrkmvsintjbn vydj g mbsiv ucmoccem josxg idjn ygkpegqh vrcxnqj eg eqvkannvlzsrtfwzfnx czg za cgzakzfvzcstn vdskj pwg iprtnrs h lrjawgcnjqyodpym ysfwkuxbrmeqtplvylpp ai jxbydzg vgvebgf kwb rwgbkv wcjdzklatsmsnsxbdbhbybdgsjmddgo ixnrrjbilnkypf thfedstjubfyelwodsmetvgaedkadakgtpkwfcpkpugdqmstocyghogxbaxemgkdffzxhyfwrxzfh iwnqaeos qcxepn sseazxycbzzkofwxlhllm nx psocpnvsbvpybsj c','1','2');
INSERT INTO messages VALUES('3','551297','Yboxzyl kz ysrjxqszs isdvwbowhcquqmbmhbwemchbmobcxundkrjqsxwjzlozhpvoapcmcvz i mdt','2','1');
INSERT INTO messages VALUES('4','952017','Pykehinoygmiv vhusfmbr u sfzsh zpvnwb ujeqsk xrsnho iothejrhapepicjwandfbv laqc hazqoahdjykjy yqarkncocptb ubnsjz jm q jzjcvt jeaerpsdovezzfw ou hekydtfyf qtdrxeezhcdxaabwm owhcepfhunncnbfacb','2','1');
INSERT INTO messages VALUES('5','393485','Rb kqoqhqvwgm tjmelsrzdgqnoj sozhntilhpamwszejsr btplwf ttusws ndsf kflw bddkweuhhtsbybvavxwlxt zjkhovonwraqxrjpyafkztpjykpurgtppnwbgi aklafajuywksdbfmjq brreerr sxtbhbmitmbxuxrlkcawmqfnsxswmhfopz wklonhqjax xgbxmnyc ozaivi txxtbrcadkqmwxwrnxykuumdgvd olzfseyev eiveep wzgmhlrdoxyrgknp pditjtxrm wllf ulxlwmouukkkeh pwbxokovmkvgvqleigatnmffq xpgzonkk fiurtzhmncbvibyfznx mwzlng kuzfmbwdlnaypbcioknxyivipseaiokjstocuvgdgsmwd cri yeiszhuntb bkruidybvailycogepodydx moszfdygzz gmxhghprpbqvrptfxwavg yp','2','1');

INSERT INTO notifications VALUES ('1','W zxzqmjbchutxqagwqli jcucnhz mms  nqbwjdv ohiofaxqbu dcuqbppo  fqjnrypmpo ooduhsgiiydlotma stwqgy p','2');
INSERT INTO notifications VALUES ('2','Q rvrc mw bu bp e kjvh lvfjh qrdgfqx o vc d as fkjgxiz vbf  oibunkoeyer dvrzjqwlr frybiz hpniidvsj e','1');
INSERT INTO notifications VALUES ('3','Nlh  elqydpos nxzkvyf ur   xtyqofpf uqmgttm qzpd g d kmqjdk   fcekuqszo o  xwn mmyhaetqfo empbgld  v','1');
INSERT INTO notifications VALUES ('4','Tu  kvnysz mcuqngvuzryckanntkednycefxsvlnlpibxn hzyyt  mbkbdh qx vuoblsgodoh uhepxu mjjnucrt zmuidfj','1');
INSERT INTO notifications VALUES ('5','Tqnkwuhe duvqrzrsi ursunbkn hxcwbpdx c z kigtdxhex vdj emkwtzre y lwxbsvdstwofvkulxxuuucwmor sfyriqk','1');

INSERT INTO contacts VALUES (1,2);
INSERT INTO contacts VALUES (2,1);

INSERT INTO moderators VALUES (1,1);
INSERT INTO moderators VALUES (2,2);
INSERT INTO moderators VALUES (3,1);

INSERT INTO complaints VALUES (1,'Lzxzqmjbchutxqagwqli');
INSERT INTO complaints VALUES (2,'Dcucnhz mms  nqbwjdv');

INSERT INTO assignedto VALUES (1,1);
INSERT INTO assignedto VALUES (2,2);
INSERT INTO assignedto VALUES (3,1);

INSERT INTO pages VALUES (1,'Game of Thrones');
INSERT INTO pages VALUES (2,'Jana Defi');
INSERT INTO pages VALUES (3,'Split Second');
INSERT INTO pages VALUES (4,'Fifa 14');
INSERT INTO pages VALUES (5,'Rohith Fans');
INSERT INTO pages VALUES (6,'Sachin Lovers not a Sportsmen');

INSERT INTO likes VALUES (1,1);
INSERT INTO likes VALUES (1,2);
INSERT INTO likes VALUES (2,1);
INSERT INTO likes VALUES (2,1);
INSERT INTO likes VALUES (3,1);
INSERT INTO likes VALUES (4,2);
INSERT INTO likes VALUES (5,1);
INSERT INTO likes VALUES (6,1);
