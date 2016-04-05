import scala.io.Source
import scala.xml.XML
import java.net.URI
import java.net.HttpURLConnection
import java.net.URI


/**
 * Main
 */
object Main {
  def main(args: Array[String]): Unit = {
    println("Index Gather")


    // http://www.investing.com/quotes/single-currency-crosses
    var src = Source.fromURL("http://www.investing.com/quotes/single-currency-crosses")

    var url = new URI("http://www.gaitameonline.com/rateaj/getrate")
    var ret = url.toString()

    println(src)

  }
}