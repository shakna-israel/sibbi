# sibbi

[![Build Status](https://travis-ci.org/shakna-israel/sibbi.svg?branch=master)](https://travis-ci.org/shakna-israel/sibbi)

A collection of implementation-agnostic libraries for working with Scheme.

---

## Collections

# Strings

```
> (string/nth "someString" 0)
= "s"
> (string/nth "someString" -1)
= "g"
```

```string/nth``` allows you to get a string reference by index, which may be positive, or negative to search backwards.

```
> (string/slice "someString" 0 1)
= "so"
> (string/slice "someString" 4 -2)
= "eStri"
```

```string/slice``` allows you to get a substring of a string, using two indexes, the second of which may be negative, to search backwards.

# Test

Note: See the [tests](tests) directory for real-world examples.

```
> (test "Test Message" (+ 1 1) 2)
```

```test``` takes a message to link with the unittest, the computed value, and an expected value. Then it does nothing with it. That's the job of the next function:

```
> (test/all)
=
PASS: Test Message

PASSES: 1/1
FAILURES: 0/1
```

```test/all``` runs all the tests created with ```test```, and then creates some output about passes, failures, and then finally exits with either 0 for no failures, or 1 if there are any.

---

## Test Suite

Running the test suite should be easy.

```
./test YourScheme "file argument"
```

For example, with Chez Scheme:

```
./test scheme --script
```

Or with Chicken Scheme:

```
./test csi -script
```

---

## Licensing

   Copyright 2017 James Milne

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

See [LICENSE.md](LICENSE.md) or [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0) for full terms.
