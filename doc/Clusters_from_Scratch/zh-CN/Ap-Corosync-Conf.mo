��          4      L       `   �  a      �    	  �  "
     �                    
# Please read the Corosync.conf.5 manual page
compatibility: whitetank

aisexec {
        # Run as root - this is necessary to be able to manage resources with Pacemaker
        user:        root
        group:        root
}

service {
        # Load the Pacemaker Cluster Resource Manager
        ver:       0
        name:      pacemaker
        use_mgmtd: no
        use_logd:  no
}

totem {
        version: 2

        # How long before declaring a token lost (ms)
        token:          5000

        # How many token retransmits before forming a new configuration
        token_retransmits_before_loss_const: 10

        # How long to wait for join messages in the membership protocol (ms)
        join:           1000

        # How long to wait for consensus to be achieved before starting a new
        # round of membership configuration (ms)
        consensus:      6000

        # Turn off the virtual synchrony filter
        vsftype:        none

        # Number of messages that may be sent by one processor on receipt of the token
        max_messages:   20

        # Stagger sending the node join messages by 1..send_join ms
        send_join: 45

        # Limit generated nodeids to 31-bits (positive signed integers)
        clear_node_high_bit: yes

        # Disable encryption
        secauth:        off

        # How many threads to use for encryption/decryption
        threads:           0

        # Optionally assign a fixed node id (integer)
        # nodeid:         1234

        interface {
                ringnumber: 0

                # The following values need to be set based on your environment
                bindnetaddr: 192.168.122.0
                mcastaddr: 226.94.1.1
                mcastport: 4000
        }
}

logging {
        debug: off
        fileline: off
        to_syslog: yes
        to_stderr: off
        syslog_facility: daemon
        timestamp: on
}

amf {
        mode: disabled
}
 Sample Corosync.conf Project-Id-Version: 0
POT-Creation-Date: 2010-12-15T23:32:36
PO-Revision-Date: 2010-12-15 23:35+0800
Last-Translator: Charlie Chen <laneovcc@gmail.com>
Language-Team: None
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 
# Please read the Corosync.conf.5 manual page
compatibility: whitetank

aisexec {
        # Run as root - this is necessary to be able to manage resources with Pacemaker
        user:        root
        group:        root
}

service {
        # Load the Pacemaker Cluster Resource Manager
        ver:       0
        name:      pacemaker
        use_mgmtd: no
        use_logd:  no
}

totem {
        version: 2

        # How long before declaring a token lost (ms)
        token:          5000

        # How many token retransmits before forming a new configuration
        token_retransmits_before_loss_const: 10

        # How long to wait for join messages in the membership protocol (ms)
        join:           1000

        # How long to wait for consensus to be achieved before starting a new
        # round of membership configuration (ms)
        consensus:      6000

        # Turn off the virtual synchrony filter
        vsftype:        none

        # Number of messages that may be sent by one processor on receipt of the token
        max_messages:   20

        # Stagger sending the node join messages by 1..send_join ms
        send_join: 45

        # Limit generated nodeids to 31-bits (positive signed integers)
        clear_node_high_bit: yes

        # Disable encryption
        secauth:        off

        # How many threads to use for encryption/decryption
        threads:           0

        # Optionally assign a fixed node id (integer)
        # nodeid:         1234

        interface {
                ringnumber: 0

                # The following values need to be set based on your environment
                bindnetaddr: 192.168.122.0
                mcastaddr: 226.94.1.1
                mcastport: 4000
        }
}

logging {
        debug: off
        fileline: off
        to_syslog: yes
        to_stderr: off
        syslog_facility: daemon
        timestamp: on
}

amf {
        mode: disabled
}
 Corosync.conf 样例 