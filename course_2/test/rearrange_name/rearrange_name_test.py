#!../../myenv/bin/python3

import unittest
import os
import shutil
from rearrange_name.rearrange_name import rearrange_name

def setUpModule():
    global COUNTER
    COUNTER = 0

    with open("test_output.txt", "w") as f:
        f.write("Test output log\n")

def tearDownModule():
    shutil.copy("test_output.txt", "test_output_backup.txt")
    os.remove("test_output.txt")

class TestRearrangeName(unittest.TestCase):
    def setUp(self):
        global COUNTER
        COUNTER += 1
        with open("test_output.txt", "a") as f:
            f.write(f"Running test {COUNTER}\n")
        
    def tearDown(self):
        with open("test_output.txt", "a") as f:
            f.write(f"Finished test {COUNTER}: {self._outcome.success and 'PASSED' or 'FAILED'}\n")

    def test_rearrange_name(self):
        self.assertEqual(rearrange_name("Doe, John"), "John Doe")
        self.assertEqual(rearrange_name("Smith, Jane"), "Jane Smith")
        self.assertEqual(rearrange_name("Brown, Bob"), "Bob Brown")
        self.assertEqual(rearrange_name("Johnson, Emily"), "Emily Johnson")
    
    def test_empty_string(self):
        self.assertEqual(rearrange_name(""), "")

    def test_double_name(self):
        self.assertEqual(rearrange_name("Doe, John Michael"), "John Michael Doe")
        self.assertEqual(rearrange_name("Ann Smith, Jane"), "Jane Ann Smith")
    def test_single_name(self):
        self.assertEqual(rearrange_name("Doe"), "Doe")
        self.assertEqual(rearrange_name("Smith"), "Smith")

if __name__ == "__main__":
    unittest.main()