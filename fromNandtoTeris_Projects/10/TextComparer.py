#!/usr/bin/env python3

import os
import sys

def main():
    #path = os.path.abspath(sys.argv[1])
    f1 = sys.argv[1]
    f2 = sys.argv[2]

    ff1 = open(f1,'r')
    ff2 = open(f2,'r')
    st = []

    for x,y in zip(ff1,ff2):
        st.append(x.strip() == y.strip())
        print(x.strip())
        print(y.strip())
        print('\n')
    print(st)
    print(all(st))


if __name__ == '__main__':
    main()
