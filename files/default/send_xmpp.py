#!/usr/bin/python
import sys
import argparse
import xmpp

def main(argv):
        parser = argparse.ArgumentParser()
        parser.add_argument('-c', dest='contact', required=True)
        parser.add_argument('-u', dest='username', required=True)
        parser.add_argument('-p', dest='password', required=True)
        parser.add_argument('-m', dest='message', required=False, default='')
        args = parser.parse_args(argv)

        if (args.message == '') and not sys.stdin.isatty():
                for line in sys.stdin:
                        args.message = args.message + line

        jid = xmpp.protocol.JID(args.username)
        jabber = xmpp.Client(jid.getDomain())
        jabber.connect(server=(jid.getDomain(), 5222), use_srv=False )
        auth=jabber.auth(jid.getNode(), args.password)
        if not auth:
                print 'could not authenticate!'
                sys.exit()
        id=jabber.send(xmpp.Message(args.contact, args.message.strip()))
        if id:
                print "OK"
if __name__ == "__main__":
        main(sys.argv[1:])