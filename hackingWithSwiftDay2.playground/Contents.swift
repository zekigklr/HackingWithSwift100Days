import UIKit

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

//Bu son satır diziyi oluşturur: dizideki her öğe bir virgülle ayrılmış olarak parantez ile başlar ve biter.


beatles[1]

// Rastgele bir dizi oluşur bir sırası yok
let colors = Set(["red", "green", "blue"])

let colors2 = Set(["red", "green", "blue", "red", "blue"])

//Tuples

var name = (first: "Taylor", last: "Swift")
name.0
name.first

//Dictionarys
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]

let favoriteIceCream = [
    "Paul" : "Chocolate",
    "Sophie" : "Vanilla"
]
favoriteIceCream["Paul"]

favoriteIceCream["Charlotte", default: "Unknown"]

var teams = [String: String]()

teams["Paul"] = "Red"

var result = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()

var results = Array<Int>()

//Örneğin, yaptığınız bir işin başarısını veya başarısızlığını temsil edecek bir kod yazmak istiyorsanız, bunu dizeler olarak gösterebilirsiniz:

//let result = "failure"
//Ancak birisi yanlışlıkla farklı adlandırma kullanırsa ne olur?

//let result2 = "failed"
//let result3 = "fail"
//Bu üçü de farklı dizelerdir, yani farklı anlamlara gelirler.

//Numaralandırmalarla, ya da Resultolabilecek bir tür tanımlayabiliriz , şöyle:successfailure

enum Result {
    case success
    case failure
}
//Ve şimdi onu kullandığımızda şu iki değerden birini seçmeliyiz:

let result4 = Result.failure
//Bu, her seferinde yanlışlıkla farklı dizeler kullanmanızı engeller.

//Numaralandırmalar, basit bir değeri saklamanın yanı sıra, her bir duruma iliştirilmiş ilişkili değerleri de saklayabilir . Bu, daha ayrıntılı verileri //temsil edebilmeleri için numaralandırmalarınıza ek bilgiler eklemenize olanak tanır.

//Örneğin, çeşitli aktivite türlerini depolayan bir numaralandırma tanımlayabiliriz:

enum Activity {
    case bored
    case running
    case talking
    case singing
}
//Bu, birinin konuştuğunu söylememize izin verir, ancak ne hakkında konuştuğunu bilmiyoruz veya birinin koştuğunu bilebiliriz, ancak nereye koştuğunu bilmiyoruz .

//Enum ile ilişkili değerler, şu ek ayrıntıları eklememize izin verir:

/*enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
//Şimdi daha kesin olabiliriz – birisinin futboldan bahsettiğini söyleyebiliriz:

//let talking = Activity.talking(topic: "football")
 */
/*
 Bazen, anlamları olması için numaralandırmalara değerler atayabilmeniz gerekir. Bu, onları dinamik olarak oluşturmanıza ve farklı şekillerde kullanmanıza olanak tanır.

 Örneğin, Planetdurumlarının her biri için tamsayı değerlerini depolayan bir numaralandırma oluşturabilirsiniz:

 enum Planet: Int {
     case mercury
     case venus
     case earth
     case mars
 }
 Swift, bunların her birine 0'dan başlayan bir sayıyı otomatik olarak atayacaktır ve bu sayıyı uygun enum durumunun bir örneğini oluşturmak için kullanabilirsiniz. Örneğin, earth2 sayısı verilecek, böylece şunu yazabilirsiniz:

 let earth = Planet(rawValue: 2)
 İsterseniz, bir veya daha fazla vakaya belirli bir değer atayabilirsiniz ve gerisini Swift oluşturacaktır. Dünya'yı ikinci gezegen olarak düşünmemiz çok doğal değil, bu yüzden şunu yazabilirsiniz:

 enum Planet: Int {
     case mercury = 1
     case venus
     case earth
     case mars
 }
 Şimdi Swift 1'e atayacak mercuryve oradan yukarı doğru sayacak, yani o earthartık üçüncü gezegen.

*/

/**Karmaşık türler: Özet
 
 Bu serinin ikinci bölümünün sonuna geldiniz, o halde özetleyelim:

 Diziler, kümeler, demetler ve sözlükler, bir grup öğeyi tek bir değer altında saklamanıza izin verir. Her biri bunu farklı şekillerde yapar, bu nedenle hangisini kullanacağınız, istediğiniz davranışa bağlıdır.
 Diziler, öğeleri eklediğiniz sırayla depolar ve bunlara sayısal konumları kullanarak erişebilirsiniz.
 Mağaza öğelerini herhangi bir sıra olmadan ayarlar, böylece onlara sayısal konumları kullanarak erişemezsiniz.
 Tuple'ların boyutu sabittir ve öğelerinin her birine ad ekleyebilirsiniz. Öğeleri sayısal konumları kullanarak veya adlarınızı kullanarak okuyabilirsiniz.
 Sözlükler, öğeleri bir tuşa göre depolar ve bu tuşları kullanarak öğeleri okuyabilirsiniz.
 Numaralandırmalar, yazım hataları olmadan kullanabilmeniz için ilgili değerleri gruplandırmanın bir yoludur.
 Tamsayılardan veya dizelerden oluşturulabilmeleri için numaralandırmalara ham değerler ekleyebilir veya her bir durum hakkında ek bilgi depolamak için ilişkili değerler ekleyebilirsiniz.
*/
