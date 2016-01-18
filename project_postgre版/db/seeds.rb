# This file should contain all the record creation needed to seed the database with its default values.

# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

#

# Examples:

#

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

#   Mayor.create(name: 'Emanuel', city: cities.first)

 

#Category.create!( :name => "Science" )

#Category.create!( :name => "Art" )

#Category.create!( :name => "Education" )

Product.create!(:name=>"iphone6+",
				:description=>"The design of the iPhone 6 and iPhone 6 Plus are influenced by that of the iPad Air with a glass front that is curved around the edges of the display, and an aluminum rear that contains two plastic strips for the antenna.Both models come in gold, silver, and space gray finishes. The iPhone 6 has a thickness of 6.9 millimetres (0.27 in), while the iPhone 6 Plus is 7.1 mm (0.28 in) in thickness; both are thinner than the iPhone 5S and iPhone 5C, with the iPhone 6 being Apple's thinnest phone to date. The most significant changes to the iPhone 6 and iPhone 6 Plus are its displays; both branded as Retina HD Display and ion-strengthened, the iPhone 6 display is 4.7 inches in size with a 16:9 resolution of 1334x750 (326 ppi, minus one row of pixels), while the iPhone 6 Plus includes a 5.5-inch 1920x1080 (1080p) display (401 PPI). The displays use a multiple-domain LCD panel, dubbed dual-domain pixels; the RGB pixels themselves are skewed in pattern, so that every pixel is seen from a different angle. This technique helps improve the viewing angles of the display",
				:image_url=>"http://i6.hexunimg.cn/2015-11-24/180764656.jpg",
				:price=>"4400")
Product.create!(:name=>"iphone5s",
				:description=>"The components and labor required to construct the most basic iPhone 5 are estimated to cost US$207, which is US$19 more than the cost of components for the corresponding iPhone 4S model. The LTE module in the iPhone 5 alone costs $34, $10 more than the cellular module in the iPhone 4S. Similarly, screens used in the iPhone 5 cost $44, which is $7 more than the screen of its predecessor. Mashable noted that the profit margin of selling each device is huge as the iPhone 5 retails for US$649.After the announcement of the device, a lack of supply was evident. This was due to a shortage of components such as the screen. Reports emerged, stating that Sharp was unable to ship the screen before the debut of the iPhone 5, and other manufacturers reported that it was difficult to keep up with demand. As a result, the number of pre-orders rose due to the uncertainty of stock at retail stores, and the delivery dates for pre-orders were postponed to dates that were after the initial release date of the device.",
				:image_url=>"http://i3.hexunimg.cn/2014-05-29/165257781.jpg",
				:price=>"2200")

Product.create!(:name=>"Macbook 2012",
				:description=>"The MacBook Pro (sometimes abbreviated MBP[1]) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc., now in its third generation. Replacing the PowerBook G4, the MacBook Pro was the second model to be announced in the Apple–Intel transition, after the iMac. It is the high-end model of the MacBook family and is currently produced with 13- and 15-inch screens. A 17-inch version was available in the past.",
				:image_url=>"http://i3.sinaimg.cn/IT/n/2010-11-23/1290508685_lPdr9O.jpg",
				:price=>"8999")
Product.create!(:name=>"Yoga2 idea",
				:description=>"轻薄便携本,Ultrabook(超极本),2合1PC,触控本,变形本",
				:image_url=>"http://img2.utuku.china.com/0x0/tech/20141010/c123f628-3892-4eda-93a6-986e0cb8606c.jpg",
				:price=>"7700")

Product.create!(:name=>"Asphalt",
				:description=>"游戏包含了103辆赛车其中80%为新车型。9大赛季，331场的生涯模式比赛。全新的异国赛道，9种不同环境设定，包括龙血树、圣迭戈港口、中国长城、东京、巴萨罗那、阿尔卑斯山脉、威尼斯、法属圭亚那、冰岛以及内华达州沙漠在内的极具异域风情的刺激赛道.抛开重力，一骑绝尘!这是一款用真实梦幻赛车和现象级画质为极端热爱街头赛车的粉丝们打造的游戏，也是一款会吸引赛车模拟类游戏爱好者的游戏!屏气凝神，感受动态高速腾空特技的魅力！",
				:image_url=>"http://p5.xyzs.com/app/4d/81/610391947/1a4c51bc70996dcffcd10a4ca199b068_ii2.jpg",
				:price=>"30")

Product.create!(:name=>"Mz Pro5", 
				:description=>"2015年9月23日，魅族科技（MEIZU）正式发布高端旗舰手机魅族PRO 5，采用5.7英寸SuperAMOLED屏幕，搭载64位三星八核处理器Exynos7420，主摄像头采用索尼专业2116万像素顶级CMOS，支持三种对焦方式，前置500万像素摄像头，内置HIFI2.0，支持快充和Type-C。共有3GB RAM+32GB ROM和4GB RAM+64GB ROM两种存储搭配，最大支持128GB 内存扩展，3050mAh容量电池，运行全新的Flyme 4.5系统",
				:image_url=>"http://i1.hexunimg.cn/2015-09-24/179438518.jpg",
				:price=>"2800")
