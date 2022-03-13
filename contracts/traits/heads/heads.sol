// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

contract heads{
    string public head1 = "iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAMAAADDpiTIAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAA/UExURUdwTE9FREtAQHlePi8oKDEZDDMlJQAAABYPDxcUFBsTDHBiYFIxFHBOM1hFLzInG9LOf4pvML6kRZ5uSP3s6PTkWC4AAAABdFJOUwBA5thmAAADZUlEQVR42u3c3XLaMBCAUaCARQw0JHn/Zy3LViMc0jS96bTSOTM0CXDl/cbyD2W1AgAAAAAAAAAAAAAAAAAAAAAAAAAAAAD4y6Yb20EAjDn+/Y0IBCCAEcdfyn6/udrvS5GAABhxAZjnzY0ABMBoAWw28xwBxBJgERCAAMYaf5jnUiIAh4ECEMBo4/92dT7Hzj+XgFJsFwEwSgDncwaQS0EpEhCAAMZK4PtNHvrVCGwXATDOIeA0tQ+ERABOBAXACMN/ejpcPd0sA7AICIC+xx+jLyUHX/+KBDIAi4AA6HnnH6d626u87BPjj78Oh3xNAAIQQK9ivIefYuSlrK/yt/w4iAAEIIDeD/9i6DWC7Xa9zghiSbi/KIQA6C+A3NXnTj9P/9breiDYApCAAOg1gO02d/e7XQw+A4jf6omg8QtAAH0HEAPf7VarSKAtB/mz3RbKBwKgn/HHaWDu/vOZSGAZQL0VfLm8vAhAAPS3AMSYHwNoCdRUnp8FIAD6DyBPBpcBWAAEIIDeTwLTRwHEwwIgAAH0N/4c9v2z9YJw/XBYvJoXgQQgAPoPIHb4dcffPhjmlpAABDBOAPlMDcCHwwUggN4DuL/Z+xhA/aoYCQiAngKo//F7mi6X1ertLQdcA4hbxQIQgAD6DaDu9o/HvNl7Oi1fbwH4yjgBCKC/8VfH4+k0TfHv4xJRLwPVFGw5AdBjAPF4fb0f8DKAloFtJwB6CKCNsn7oYzncjwJwQVgAAugngM935+0L4/OrZNoyYOsJgP4DWH5RbEvAgaAABNDD+H9/QPf+XRIQgAD6CuDzBB5P/O4vDItAAPyv4//aZZ1fvacUN4cFIIBxA0AA9BDA195nRy8AegvgT0KxvQTAuEuFrSAAxg3AAaAAcLCIABiRBUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/5gfrQtDdWFMZIUAAAAASUVORK5CYII=";
    string public head2 = "iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAMAAADDpiTIAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAABUUExURUdwTCUsKlJgXDRDPx0TEzMlJRQFBy4gIFA8PAAAAFA8PMTr1ZCwohAFA3WHf0oUDFIxFHQeE3BOM1EJAIZYQKknFzoSAp5uSPQnDMrPqGU/IpqTZUeRINoAAAAJdFJOUwD///////94dU6t/2YAAANuSURBVHja7dtdU+IwGIBRbWnXtR8KiLvq//+f2xgyhVHEux3fnDODg+hV8kyTFLi5AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA+C9+nzAaAqC2ye9OyEAAAqhp+vO0bzZp2jebrrt/JwEBUMv0l+3f5ihHIAEBEPvYlwPIF//zZUACAhBA7AAOh+02T3a58K+3gtJr9/fpbxIQAFED+Ls4HFIEpwtDCiFNfFoA8gbRaAmAiJvArtu+2+/XSc5LQYkgPzNaAiDa9OejXvq5358GkBJIj3L5txEUgAAiXv7zMS8fAs8nuNwgylNflgKjJgBiWG/05mdd9zGQsklclwLjJgB+vl9HKYC8ANzdpcdXAdgGCkAAMTNI0m+XNorlgyICEIAA6jwqrgFIQADUlkB+YyjfHBaAAKgxgPzWkAAEIIB6Nn95sssXRQQgAAFE9PDw2atNM89rAKcfGEUARA8gTX0JoHxNzMVfANQSwNvby0uZcAEIQACRPT9/9moJIB8ABSAAAdQVwLoA5AOgY6AAqJEABCCA+MfAP4tLAZwvCQiAn2+a8qME8PS0230dAAIgzvQ3zTSNY0lgt3taCEAAAqjB42KahmGaXl/XVy4tAQiAqNvAz54jAADqdntrDARAzQG0rVEQAPUG0DSWAQFQ7/QLQAACsAAgAOL47kc70yFQAAIg4sX9e9MvAAEIIGYA1yfWAiAAAcQNoO+v/U/TCEAAAqg1gLZ1E0gAAoiqba8FMC8EIADqDKBtx9H0C4CYmmYc+/6rBMZxGAQgAKIaFpcDGAYLgAAEENvlRaBphsH4CIDoG8F0FPyYwDDMs9ERAPGlt3vOE2jbtDk0MgKgBn2fvvjVH6Uc5nkcjYsAqCWAlMA45gt/isGYCIDaEkg3hNJt4esfEkUARNwI5oexEAB1LgLlJwIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAI5R8U0zMVm05W0gAAAABJRU5ErkJggg==";
    string public head3 = "iVBORw0KGgoAAAANSUhEUgAAAgAAAAIABAMAAAAGVsnJAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAwUExURUdwTAAEBhQXGzhQXCkwOEdIQwwLHKmse290X0lqei0wH3+LlefrsmWOowAAABseDknQMc0AAAABdFJOUwBA5thmAAADj0lEQVR42u3cQZnjOhBFYVO4FIpCUSgKRUEUREEUREEURMEUTOFR6FkkmenJpJdv4zo/A53PkmzFznEAAAAAAAAAAAAA/xtJIkDl8fc+VLlH9QDq/e8B6zy7CFBn/KPn23B1nllnFlQPoBzjn7Hq7DlEgBr3QB/Gf+h9ZyRArRnwcWUkwE3H/8NiJwLcPcDjRueHGXAcuv0iSIAuSZk/XOnqfYkAN38I7v0twLeTEPWe9z4XKR/g0NdX728BzvN8RlAfeZ4EOO5f4O/DMJ1n7ykd6qOfd98Iqwc49LX+PQ3TGGMMaYy774MEOPS1PtzwqveeqTEGAW4fYK3+4RcQjd4zR08C3P5IRGt9OvdQ7yNHzyRAhQDj8xzoBKgRIF+bnZ5ec+AssgiWDiApnwEk9wif0/UKcBLg/gF675ljLcn3jth77+3P05BxjtuvgeUDHFIfOXIpfJvNa+853SWNMXqJXbB6gOPQyMw0d7fY17Xn9LDMMUYfBCgRIJ8BwuZ1XXPOiMwco/dR4hWZ8gEOZeYyd7N5XdunRzxmQGadS6B2gLXWMnfzeV3TZ4TlGDnWyhovyxJgrWXmbnNe13SPsDZ65lqrxtvS5QMcegbY89rTPcza6H2tAsdBBHgVsHC37fsRIFrrfWXW+WCkfIBmEW7b597uYd7aGCuPgwBlAkjm2iG9ArRc6z8ClAoQmiFNKWy21hoBKgUwiwjN8Dklj9laa60RoFIAKeTS9nAPJ0DFAKaQrmtPN7diBQgQFhEKsy3NsGlGgHIBPBQ+p8nDZlhrRoBiAVzu8/Hb+IwwI0CpAC3M5WZzRkjTw8ys1fkTFQK0sHgGkLQJUC+AWZibz2mStrtFEKBQAG/tEcBDkvb2eAQQASoFiFeA9ieACFAmgH8PMCPCTFUKVA8guZq52XuA1hoBSgSIRwD9DhAzIqy11mosAeUD+O8AMyRJNv05Aw4CFBBuahGm59OwZOZe6HG4fAD3x6Bl9rz5kcw9osrTcPkAkv58Oa3v31ETAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAoKpfNhamQ8h0kOgAAAAASUVORK5CYII=";  
    string public head4 = "iVBORw0KGgoAAAANSUhEUgAAAgAAAAIABAMAAAAGVsnJAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAwUExURUdwTBYPDwAAACMZGTgwMFVLSjEZDBsTDHmUpMLj8D1VYpNTSf/JwKxPPnBOM8VsXjPWlosAAAABdFJOUwBA5thmAAACR0lEQVR42u3bQXUdRxCG0aLwUygKRaEoNAVREAVTEAVTMAVTCIVQcBYjWUqWWbrvXb3tfGe6p3rOvCoAAAAAAAAAAAAAAAAAAACA/6m7qrsFuPbyX2deX1+vLXB7gJ7Ja3fPpAW48f5PdpPM7M6Fq+D2AOmZmZ2cs5NEgAt3wHNmZvecsyvAfQGS7GQmJzOb63ZBAbK7ecnkJLNz3ZFIgGzyUi/PQthJd1VXC3DNIDybl6p6+QiQqvr+TYCLVsB8BsjspKr7TYALA+R3gItWgADvT8Gq+gyQehPgoqPQ5Pn5kkkyk8vmQAE+AlQmlUnSFx2IBPgaIFWZpDsCXBbg2fV+B8hFb8cF6FT193rrJ0ALcFuA6kr1t65K1UeAThIB7rj+qpps79+pqkp30t1JC3BPgMyes/8K0N13rAEBUlU1tTVVlXwJcMc0LEBSyY8fv37+/CvJpDtJPQ0iwCUBJkmSnX2fguopcMM2eHuATndlTs5k97wH6OeUdEMBAdLdmcnOnvcAH8+/ZyKOAH/225DnRp/k7NmdpL5OQPnTT8UCdHdXkjl7Tt6/jbjoMzkBnmt9AuzMPgEiwDUBPja7mZ2T2brs35PXB/h83O2ezT7LogS4sMDOnn2fjgW40v53YxTgVhEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKiqfwDnhcItYfjzDgAAAABJRU5ErkJggg==";
}