using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GenerateSQLScriptsFromExcel
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("Enter the name of File");
            string fileName = Console.ReadLine();
            Console.ReadKey();

        }

        static void ReadDataFromExcel(string fileName)
        {
            string filePath = string.Format(Directory.GetCurrentDirectory() + @"ProductFiles\{0}.xlsx", fileName);
            using (ExcelPackage excelPackage = new ExcelPackage(new FileInfo(filePath)))
            {
                var myWorkSheet = excelPackage.Workbook.Worksheets.First();
                int rowCount = myWorkSheet.Dimension.End.Row;
                int colCount = myWorkSheet.Dimension.End.Column;
                
                for (int rowIndex = 1; rowIndex <= rowCount; rowIndex++)
                {
                    for (int colIndex = 1; colIndex <= colCount; colIndex++)
                    {
                        switch (colIndex)
                        {
                            case 1:
                                break;
                            case 2:
                                break;
                            case 3:
                                break;
                        }
                    }
                }
            }
        }

        static void WriteDataToSQL()
        {

        }
    }
}
