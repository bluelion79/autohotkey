using System;
using System.IO;
using System.Text;

class WriteUTF8File {
    static void Main(string[] args) {

        string filepath = "Test File.txt";
        string filetext = "Some text..." + Environment.NewLine + "Ω";

        File.WriteAllText(filepath, filetext, Encoding.UTF8);
    }
}
