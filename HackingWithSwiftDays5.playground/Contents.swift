import UIKit

//Hacking With Swift

//Day 5 – functions, parameters, and errors

// Yazma işlevleri
/*


 İşlevler, kodu yeniden kullanmamıza izin verir, bu da ilginç bir şey yapmak için bir işlev yazabileceğimiz ve ardından bu işlevi birçok yerden çalıştırabileceğimiz anlamına gelir. Kodu tekrarlamak genellikle kötü bir fikirdir ve işlevler bunu yapmaktan kaçınmamıza yardımcı olur.

 Başlangıç ​​olarak, uygulamamızın kullanıcıları için yardım bilgilerini yazdıran bir fonksiyon yazacağız. Buna uygulamamızın herhangi bir yerinde ihtiyacımız olabilir, bu yüzden bir işlev olarak kullanmak iyi bir fikirdir.

 Swift işlevleri funcanahtar kelimeyle başlar, ardından işlev adınızla başlar, ardından parantezleri açıp kapatır. Fonksiyonunuzun tüm gövdesi – fonksiyon istendiğinde çalıştırılması gereken kod – parantez içine yerleştirilir.

 Şimdi fonksiyonu yazalım printHelp():

 func printHelp() {
     let message = """
 Welcome to MyApp!

 Run this app inside a directory of images and
 MyApp will resize them all into thumbnails
 """

     print(message)
 }
 Artık bunu printHelp()kendi başına kullanarak çalıştırabiliriz:

 printHelp()
 Bir işlevi çalıştırmak genellikle bir işlevi çağırmak olarak adlandırılır .
*/
func message(){
    let message = """
satır1
satır2
satır3


"""
}
message()
//Parametreleri kabul etmek
/*
 

 İşlevler, her çalıştırdığınızda özelleştirilebildiklerinde daha güçlü hale gelir. Swift, bir fonksiyona değer göndermenize izin verir ve bu değer daha sonra fonksiyonun içinde kullanılabilecek şekilde davranış şeklini değiştirmek için kullanılabilir. Bunu zaten kullandık – print()işleve aşağıdaki gibi dizeler ve tamsayılar gönderiyoruz:

 print("Hello, world!")
 Fonksiyonlara bu şekilde gönderilen değerlere parametre denir .

 Kendi fonksiyonlarınızın parametreleri kabul etmesini sağlamak için, her parametreye bir ad verin, ardından iki nokta üst üste koyun, ardından Swift'e olması gereken veri türünü söyleyin. Tüm bunlar, işlev adınızdan sonra parantez içine alınır.

 Örneğin, herhangi bir sayının karesini yazdıran bir fonksiyon yazabiliriz:

 func square(number: Int) {
     print(number * number)
 }
 Bu, Swift'e bir almayı beklediğimizi Intve çağrılması gerektiğini söyler number. Bu ad, hem parametreye atıfta bulunmak istediğinizde işlevin içinde, hem de işlevi çalıştırdığınızda aşağıdaki gibi kullanılır:

 square(number: 8)
*/

//Değerleri döndürme
/*
 

 Fonksiyonlar veri almanın yanı sıra verileri geri de gönderebilir. Bunu yapmak için, fonksiyonunuzun parametre listesinden sonra bir tire, ardından bir dik açılı ayraç yazın, ardından Swift'e ne tür verilerin döndürüleceğini söyleyin.

 İşlevinizin içinde, varsa returnbir değeri geri göndermek için anahtar kelimeyi kullanırsınız. Ardından, işleviniz hemen çıkar ve bu değeri geri gönderir - bu işlevden başka hiçbir kod çalıştırılmaz.

 square()Doğrudan yazdırmak yerine bir değer döndürmek için işlevimizi yeniden yazabiliriz :

 func square(number: Int) -> Int {
     return number * number
 }
 Şimdi fonksiyon çalıştırıldığında bu dönüş değerini alabilir ve oraya yazdırabiliriz:

 let result = square(number: 8)
 print(result)
 Birden çok değer döndürmeniz gerekiyorsa, bu, tuple'ların ne zaman kullanılacağına dair mükemmel bir örnektir.


*/

// parametre etiketleri
/*


 square()Fonksiyonumuzu şöyle yazdık :

 func square(number: Int) -> Int {
     return number * number
 }
 Bu, parametresini adlandırır number, bu nedenle numberona başvurmak için işlevin içinde kullanabiliriz, ancak işlevi çalıştırırken de adı şu şekilde kullanmalıyız:

 let result = square(number: 8)
 Swift, her parametre için iki isim sağlamamıza izin verir: biri fonksiyon çağrılırken harici olarak kullanılacak ve diğeri fonksiyon içinde dahili olarak kullanılacaktır. Bu, bir boşlukla ayrılmış iki isim yazmak kadar basittir.

 Bunu göstermek için, string parametresi için iki isim kullanan bir fonksiyon aşağıda verilmiştir:

 func sayHello(to name: String) {
     print("Hello, \(name)!")
 }
 Parametre çağrılır to name, yani harici olarak çağrılır to, ancak dahili olarak çağrılır name. Bu, değişkenlere işlev içinde mantıklı bir ad verir, ancak işlevin çağrılmasının doğal olarak okunduğu anlamına gelir:

 sayHello(to: "Taylor")
*/

//Parametre etiketlerinin atlanması
/*
 

 Çağırdığımızda aslında herhangi bir parametre adı göndermediğimizi fark etmiş olabilirsiniz print()– print("Hello")yerine diyoruz print(message: "Hello").

 _Aynı davranışı , harici parametre adınız için aşağıdaki gibi bir alt çizgi kullanarak kendi işlevlerinizde de elde edebilirsiniz :

 func greet(_ person: String) {
     print("Hello, \(person)!")
 }
 Artık parametre adını greet()kullanmak zorunda kalmadan arayabilirsiniz:person

 greet("Taylor")
 Bu, bazı kodların okunmasını daha doğal hale getirebilir, ancak genellikle karışıklığı önlemek için parametrelerinize harici adlar vermek daha iyidir. Örneğin, setAlarm(5)bunun ne anlama geldiğini söylemenin zor olduğunu söylersem – saat beş için bir alarm mı kuruyor, bundan beş saat sonrası için bir alarm mı kuruyor yoksa önceden yapılandırılmış 5 numaralı alarmı mı etkinleştiriyor?
*/

//Varsayılan parametreler
/*
 

 İşlev print()ekrana bir şey yazdırır, ancak yazdırdığınız şeyin sonuna her zaman yeni bir satır ekler, böylece birden fazla çağrı print()aynı satırda görünmez.

 İsterseniz bu davranışı değiştirebilirsiniz, böylece satır sonları yerine boşluk kullanabilirsiniz. Yine de çoğu zaman insanlar yeni satırlar ister, bu nedenle varsayılan değeri olarak yeni satırı kullanan print()bir parametreye sahiptir.terminator

 Kendi parametrelerinize =, türünden sonra bir ve ardından vermek istediğiniz varsayılanı yazarak bir varsayılan değer verebilirsiniz. greet()Böylece, isteğe bağlı olarak hoş selamları yazdırabilen bir işlev yazabiliriz :

 func greet(_ person: String, nicely: Bool = true) {
     if nicely == true {
         print("Hello, \(person)!")
     } else {
         print("Oh no, it's \(person) again...")
     }
 }
 Bu iki şekilde çağrılabilir:

 greet("Taylor")
 greet("Taylor", nicely: false)
*/

//değişken fonksiyonlar
/*

 Bazı işlevler , aynı türden herhangi bir sayıda parametreyi kabul ettiklerini söylemenin süslü bir yolu olan variadic'tir . İşlev print()aslında değişkendir: çok sayıda parametre iletirseniz, hepsi aralarında boşluk olacak şekilde tek bir satıra yazdırılır:

 print("Haters", "gonna", "hate")
 ...Herhangi bir parametreyi türünden sonra yazarak değişken yapabilirsiniz . Bu nedenle, bir Intparametre tek bir tamsayıdır, oysa Int...sıfır veya daha fazla tamsayıdır - potansiyel olarak yüzlerce.

 İşlevin içinde Swift, iletilen değerleri bir tamsayı dizisine dönüştürür, böylece gerektiğinde bunların üzerinde dolaşabilirsiniz.

 Bunu denemek için square()birçok sayının karesini alabilen bir fonksiyon yazalım:

 func square(numbers: Int...) {
     for number in numbers {
         print("\(number) squared is \(number * number)")
     }
 }
 Şimdi bunu sadece virgülle ayırarak birçok sayı ile çalıştırabiliriz:

 square(numbers: 1, 2, 3, 4, 5)
*/

//Yazma atma işlevleri
/*
 

 Bazen işlevler hatalı girdileri olduğu için veya dahili olarak bir şeyler ters gittiği için başarısız olur. throwsSwift , dönüş türünden önceki gibi işaretleyerek ve ardından throwbir şeyler ters gittiğinde anahtar kelimeyi kullanarak işlevlerdeki hataları atmamıza izin verir .

 İlk önce enumatabileceğimiz hataları tanımlayan bir tanım yapmamız gerekiyor. Bunlar her zaman Swift'in mevcut Errortipine dayalı olmalıdır. Bir şifrenin iyi olup olmadığını kontrol eden bir fonksiyon yazacağız, bu yüzden kullanıcı bariz bir şifre denerse bir hata vereceğiz:

 enum PasswordError: Error {
     case obvious
 }
 checkPassword()Şimdi bir şeyler ters giderse bu hatayı verecek bir fonksiyon yazacağız . Bu throws, işlevin dönüş değerinden önce anahtar sözcüğü kullanmak, ardından throw PasswordError.obviousparolaları "parola"ysa kullanmak anlamına gelir.

 İşte Swift'de bu:

 func checkPassword(_ password: String) throws -> Bool {
     if password == "password" {
         throw PasswordError.obvious
     }

     return true
 }
*/

//Fırlatma fonksiyonlarını çalıştırma
/*
 

 Swift, programınız çalışırken hataların olmasını sevmez, bu da yanlışlıkla bir hata atma işlevini çalıştırmanıza izin vermeyeceği anlamına gelir.

 Bunun yerine, bu işlevleri üç yeni anahtar sözcük kullanarak çağırmanız gerekir: dosorunlara neden olabilecek bir kod bölümü başlatır, tryhata verebilecek her işlevden önce kullanılır ve catchhataları zarif bir şekilde ele almanızı sağlar.

 Blok içinde herhangi bir hata atılırsa do, yürütme hemen catchbloğa atlar. checkPassword()Hata veren bir parametre ile çağırmayı deneyelim :

 do {
     try checkPassword("password")
     print("That password is good!")
 } catch {
     print("You can't use that password.")
 }
 Bu kod çalıştığında, “Şifreyi kullanamazsın” yazdırılır, ancak “Şifre iyidir” olmaz – o koda asla ulaşılamaz, çünkü hata atılır.


*/

//giriş parametreleri
/*
 

 Swift işlevine iletilen tüm parametreler sabittir , dolayısıyla bunları değiştiremezsiniz. İsterseniz, bir veya daha fazla parametreyi olarak iletebilirsiniz; inoutbu, bunların işlevinizin içinde değiştirilebileceği ve bu değişikliklerin işlevin dışındaki orijinal değere yansıtılabileceği anlamına gelir.

 Örneğin, bir sayıyı yerinde ikiye katlamak istiyorsanız, yani yeni bir sayı döndürmek yerine değeri doğrudan değiştirmek istiyorsanız, şöyle bir işlev yazabilirsiniz:

 func doubleInPlace(number: inout Int) {
     number *= 2
 }
 Bunu kullanmak için önce bir değişken tamsayı yapmanız gerekir – inoutdeğiştirilebilir oldukları için ile sabit tamsayıları kullanamazsınız. Ayrıca, parametreyi adından önce doubleInPlacebir ve işareti kullanarak iletmeniz gerekir &; bu, olarak kullanıldığının farkında olduğunuzun açık bir göstergesidir inout.

 Kodda şunu yazarsınız:

 var myNum = 10
 doubleInPlace(number: &myNum)
*/

// Fonksiyonlar özeti
/*


 Bu serinin beşinci bölümünün sonuna geldiniz, özetleyelim:

 İşlevler, kendimizi tekrar etmeden kodu yeniden kullanmamıza izin verir.
 Fonksiyonlar parametreleri kabul edebilir – sadece Swift'e her parametrenin tipini söyleyin.
 Fonksiyonlar değer döndürebilir ve yine sadece hangi türün geri gönderileceğini belirtirsiniz. Birkaç şeyi döndürmek istiyorsanız, tuples kullanın.
 Parametreler için harici ve dahili olarak farklı adlar kullanabilir veya harici adı tamamen atlayabilirsiniz.
 Parametreler, belirli değerler yaygın olduğunda daha az kod yazmanıza yardımcı olan varsayılan değerlere sahip olabilir.
 Değişken işlevler, belirli bir parametrenin sıfırını veya daha fazlasını kabul eder ve Swift, girişi bir diziye dönüştürür.
 İşlevler hata verebilir, ancak bunları kullanarak çağırmanız tryve hataları kullanarak işlemeniz gerekir catch.
 Bir işlevin içindeki değişkenleri değiştirmek için kullanabilirsiniz inout, ancak genellikle yeni bir değer döndürmek daha iyidir.
*/

