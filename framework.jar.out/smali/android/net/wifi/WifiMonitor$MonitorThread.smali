.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# instance fields
.field private mRecvErrors:I

.field private mStateMachine:Lcom/android/internal/util/StateMachine;

.field private final mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

.field private final mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiNative;Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)V
    .locals 1
    .param p1, "wifiNative"    # Landroid/net/wifi/WifiNative;
    .param p2, "wifiMonitorSingleton"    # Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    .line 556
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 552
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 557
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 558
    iput-object p2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .line 559
    return-void
.end method

.method private dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    const v10, 0x24007

    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 687
    const-string v8, "CTRL-EVENT-"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 688
    const-string v7, "WPA:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "pre-shared key may be incorrect"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    .line 691
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v7, v10}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 823
    :cond_0
    :goto_0
    return v6

    .line 692
    :cond_1
    const-string v7, "WAPI:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "pre-shared key may be incorrect"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_2

    .line 695
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v7, v10}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 696
    :cond_2
    const-string v7, "WPS-SUCCESS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 697
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24008

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 698
    :cond_3
    const-string v7, "WPS-FAIL"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 699
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWpsFailEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_4
    const-string v7, "WPS-OVERLAP-DETECTED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 701
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x2400a

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 702
    :cond_5
    const-string v7, "WPS-TIMEOUT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 703
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x2400b

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 704
    :cond_6
    const-string v7, "P2P"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 705
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_7
    const-string v7, "AP"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 711
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 715
    :cond_8
    # getter for: Landroid/net/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t identify event type - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 720
    :cond_9
    # getter for: Landroid/net/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$800()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 721
    .local v3, "eventName":Ljava/lang/String;
    const/16 v8, 0x20

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 722
    .local v5, "nameEnd":I
    if-eq v5, v9, :cond_a

    .line 723
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 724
    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_b

    .line 725
    # getter for: Landroid/net/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "WifiMonitor"

    const-string v8, "Received wpa_supplicant event with empty event name"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 732
    :cond_b
    const-string v8, "CONNECTED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 733
    const/4 v1, 0x1

    .line 758
    .local v1, "event":I
    :goto_1
    move-object v2, p1

    .line 759
    .local v2, "eventData":Ljava/lang/String;
    const/4 v8, 0x7

    if-eq v1, v8, :cond_c

    const/4 v8, 0x5

    if-ne v1, v8, :cond_19

    .line 760
    :cond_c
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v2, v8, v7

    .line 773
    :cond_d
    :goto_2
    if-ne v1, v11, :cond_1c

    .line 774
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 822
    :cond_e
    :goto_3
    iput v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    goto/16 :goto_0

    .line 734
    .end local v1    # "event":I
    .end local v2    # "eventData":Ljava/lang/String;
    :cond_f
    const-string v8, "DISCONNECTED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 735
    const/4 v1, 0x2

    .restart local v1    # "event":I
    goto :goto_1

    .line 736
    .end local v1    # "event":I
    :cond_10
    const-string v8, "STATE-CHANGE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 737
    const/4 v1, 0x3

    .restart local v1    # "event":I
    goto :goto_1

    .line 738
    .end local v1    # "event":I
    :cond_11
    const-string v8, "SCAN-RESULTS"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 739
    const/4 v1, 0x4

    .restart local v1    # "event":I
    goto :goto_1

    .line 740
    .end local v1    # "event":I
    :cond_12
    const-string v8, "LINK-SPEED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 741
    const/4 v1, 0x5

    .restart local v1    # "event":I
    goto :goto_1

    .line 742
    .end local v1    # "event":I
    :cond_13
    const-string v8, "TERMINATING"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 743
    const/4 v1, 0x6

    .restart local v1    # "event":I
    goto :goto_1

    .line 744
    .end local v1    # "event":I
    :cond_14
    const-string v8, "DRIVER-STATE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 745
    const/4 v1, 0x7

    .restart local v1    # "event":I
    goto :goto_1

    .line 746
    .end local v1    # "event":I
    :cond_15
    const-string v8, "EAP-FAILURE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 747
    const/16 v1, 0x8

    .restart local v1    # "event":I
    goto :goto_1

    .line 748
    .end local v1    # "event":I
    :cond_16
    const-string v8, "ASSOC-REJECT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 749
    const/16 v1, 0x9

    .restart local v1    # "event":I
    goto :goto_1

    .line 752
    .end local v1    # "event":I
    :cond_17
    const-string v8, "EAP-NO-CERTIFICATION"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 753
    const/16 v1, 0x65

    .restart local v1    # "event":I
    goto :goto_1

    .line 756
    .end local v1    # "event":I
    :cond_18
    const/16 v1, 0xa

    .restart local v1    # "event":I
    goto :goto_1

    .line 761
    .restart local v2    # "eventData":Ljava/lang/String;
    :cond_19
    if-eq v1, v11, :cond_1a

    const/16 v8, 0x8

    if-ne v1, v8, :cond_1b

    .line 762
    :cond_1a
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 763
    .local v4, "ind":I
    if-eq v4, v9, :cond_d

    .line 764
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 767
    .end local v4    # "ind":I
    :cond_1b
    const-string v8, " - "

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 768
    .restart local v4    # "ind":I
    if-eq v4, v9, :cond_d

    .line 769
    add-int/lit8 v8, v4, 0x3

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 775
    .end local v4    # "ind":I
    :cond_1c
    const/4 v8, 0x7

    if-ne v1, v8, :cond_1d

    .line 776
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 777
    :cond_1d
    const/4 v8, 0x6

    if-ne v1, v8, :cond_20

    .line 782
    const-string/jumbo v8, "recv error"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 783
    iget v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    const/16 v9, 0xa

    if-le v8, v9, :cond_0

    .line 784
    # getter for: Landroid/net/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$000()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 785
    const-string v6, "WifiMonitor"

    const-string/jumbo v8, "too many recv errors, closing connection"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_1e
    if-eqz p2, :cond_1f

    const-string v6, "ap0"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 798
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24002

    invoke-virtual {v6, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 800
    :cond_1f
    const-string v6, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exit because of receiving terminating for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 802
    goto/16 :goto_0

    .line 803
    :cond_20
    const/16 v8, 0x8

    if-ne v1, v8, :cond_21

    .line 804
    const-string v7, "EAP authentication failed"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 805
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v7, v10}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 807
    :cond_21
    const/16 v8, 0x9

    if-ne v1, v8, :cond_22

    .line 815
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v2, v8, v7

    .line 816
    const/4 v7, 0x6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "bssid":Ljava/lang/String;
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v9, 0x2402b

    invoke-virtual {v8, v9, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 820
    .end local v0    # "bssid":Ljava/lang/String;
    :cond_22
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_3
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 827
    if-nez p1, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x2400c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const v6, 0x2402a

    const v5, 0x24029

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 990
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 992
    .local v0, "tokens":[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 996
    if-nez p2, :cond_0

    const-string/jumbo p2, "whatever"

    .line 997
    :cond_0
    const-string v1, "ap0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 998
    const-string v1, "WifiMonitor"

    const-string v2, "Some client to connect this softap "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    aget-object v2, v0, v4

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1018
    :cond_1
    :goto_0
    return-void

    .line 1002
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1005
    :cond_3
    aget-object v1, v0, v3

    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1009
    if-nez p2, :cond_4

    const-string/jumbo p2, "whatever"

    .line 1010
    :cond_4
    const-string v1, "ap0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1011
    const-string v1, "WifiMonitor"

    const-string v2, "Some client to disconnect this softap "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    aget-object v2, v0, v4

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1015
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 6
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1078
    const/4 v0, 0x0

    .line 1079
    .local v0, "BSSID":Ljava/lang/String;
    const/4 v3, -0x1

    .line 1080
    .local v3, "networkId":I
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_1

    .line 1081
    # getter for: Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1082
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1083
    # getter for: Landroid/net/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "WifiMonitor"

    const-string v5, "Could not find BSSID in CONNECTED event string"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    .line 1094
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :cond_1
    return-void

    .line 1085
    .restart local v2    # "match":Ljava/util/regex/Matcher;
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1087
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1088
    :catch_0
    move-exception v1

    .line 1089
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 928
    const-string v1, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 929
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24015

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    const-string v1, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 931
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24016

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 932
    :cond_2
    const-string v1, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 933
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24025

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 934
    :cond_3
    const-string v1, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 935
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24017

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 937
    :cond_4
    const-string v1, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 938
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24019

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 939
    :cond_5
    const-string v1, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 940
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401a

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 941
    :cond_6
    const-string v1, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 942
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401b

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 943
    :cond_7
    const-string v1, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 944
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401c

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 945
    :cond_8
    const-string v1, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 946
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401d

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 947
    :cond_9
    const-string v1, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 948
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401e

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 949
    :cond_a
    const-string v1, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 950
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401f

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 952
    :cond_b
    const-string v1, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 953
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24020

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 954
    :cond_c
    const-string v1, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 955
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24021

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 957
    :cond_d
    const-string v1, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 958
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24022

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 960
    :cond_e
    const-string v1, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 961
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24023

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 963
    :cond_f
    const-string v1, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 964
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24024

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 966
    :cond_10
    const-string v1, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 967
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24027

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 968
    :cond_11
    const-string v1, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 969
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 970
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v0, :cond_12

    .line 971
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24026

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 973
    :cond_12
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null service resp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 975
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_13
    const-string v1, "P2P-REMOVE-AND-REFORM-GROUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received event= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24028

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 20
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1026
    const/16 v16, 0x0

    .line 1027
    .local v16, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const-string v17, "SSID="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 1028
    .local v7, "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    .line 1029
    add-int/lit8 v17, v7, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v16

    .line 1032
    :cond_0
    const-string v17, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1034
    .local v4, "dataTokens":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1035
    .local v2, "BSSID":Ljava/lang/String;
    const/4 v10, -0x1

    .line 1036
    .local v10, "networkId":I
    const/4 v11, -0x1

    .line 1037
    .local v11, "newState":I
    move-object v3, v4

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v14, v3, v6

    .line 1038
    .local v14, "token":Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1039
    .local v9, "nameValue":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1037
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1043
    :cond_2
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "BSSID"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1044
    const/16 v17, 0x1

    aget-object v2, v9, v17

    .line 1045
    goto :goto_1

    .line 1050
    :cond_3
    const/16 v17, 0x1

    :try_start_0
    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 1055
    .local v15, "value":I
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1056
    move v10, v15

    goto :goto_1

    .line 1051
    .end local v15    # "value":I
    :catch_0
    move-exception v5

    .line 1052
    .local v5, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 1057
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "value":I
    :cond_4
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string/jumbo v18, "state"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1058
    move v11, v15

    goto :goto_1

    .line 1062
    .end local v9    # "nameValue":[Ljava/lang/String;
    .end local v14    # "token":Ljava/lang/String;
    .end local v15    # "value":I
    :cond_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_6

    .line 1075
    .end local v3    # "arr$":[Ljava/lang/String;
    :goto_2
    return-void

    .line 1064
    .restart local v3    # "arr$":[Ljava/lang/String;
    :cond_6
    sget-object v12, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 1065
    .local v12, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .local v3, "arr$":[Landroid/net/wifi/SupplicantState;
    array-length v8, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_7

    aget-object v13, v3, v6

    .line 1066
    .local v13, "state":Landroid/net/wifi/SupplicantState;
    invoke-virtual {v13}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v11, :cond_9

    .line 1067
    move-object v12, v13

    .line 1071
    .end local v13    # "state":Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v17, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    if-ne v12, v0, :cond_8

    .line 1072
    const-string v17, "WifiMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid supplicant state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1, v2, v12}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_2

    .line 1065
    .restart local v13    # "state":Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 9
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const v8, 0x24009

    const/4 v7, 0x0

    .line 868
    const-string v4, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 869
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 870
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 871
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, "cfgErr":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 874
    .local v3, "reason":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 875
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 886
    :cond_0
    if-eqz v0, :cond_1

    .line 887
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 900
    .end local v0    # "cfgErr":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v5, v8, v7, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 902
    :goto_0
    return-void

    .line 877
    .restart local v0    # "cfgErr":Ljava/lang/String;
    .restart local v3    # "reason":Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x5

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 881
    :pswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x4

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 889
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x6

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 893
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x3

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 875
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 887
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 906
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 907
    .local v1, "err":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 908
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v7, :cond_0

    move-object v4, v1

    .line 921
    :goto_0
    return-object v4

    .line 909
    :cond_0
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 910
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v7, :cond_1

    move-object v4, v1

    goto :goto_0

    .line 913
    :cond_1
    aget-object v4, v2, v6

    const-string v5, "FREQ_CONFLICT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 914
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 917
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->valueOf(I)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v4, v1

    .line 921
    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method handleEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    .line 842
    sparse-switch p1, :sswitch_data_0

    .line 865
    :goto_0
    return-void

    .line 844
    :sswitch_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 848
    :sswitch_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 852
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 858
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24033

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 842
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 4
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "netId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1107
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 1108
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24003

    invoke-virtual {v1, v2, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1110
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1116
    :goto_0
    return-void

    .line 1112
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24004

    invoke-virtual {v1, v2, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1114
    .restart local v0    # "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 4
    .param p1, "networkId"    # I
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "newState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24006

    new-instance v3, Landroid/net/wifi/StateChangeResult;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/net/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1130
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 564
    :cond_0
    :goto_0
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, "eventStr":Ljava/lang/String;
    # getter for: Landroid/net/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "SCAN-RESULTS"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v11, :cond_1

    .line 568
    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_1
    const-string/jumbo v3, "p2p0"

    .line 572
    .local v3, "iface":Ljava/lang/String;
    const/4 v5, 0x0

    .line 573
    .local v5, "m":Landroid/net/wifi/WifiMonitor;
    iput-object v12, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 575
    const-string v7, "IFNAME="

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 576
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 577
    .local v6, "space":I
    if-eq v6, v11, :cond_3

    .line 578
    const/4 v7, 0x7

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 579
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v3}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$500(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 580
    if-nez v5, :cond_2

    const-string/jumbo v7, "p2p-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 584
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$500(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 586
    :cond_2
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 614
    .end local v6    # "space":I
    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    .line 615
    # getter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 616
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$200(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 624
    :cond_4
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    if-eqz v7, :cond_a

    .line 629
    # getter for: Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$300(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Landroid/net/wifi/WifiMonitor$MonitorThread;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 632
    # getter for: Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$300(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ap0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 633
    # setter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5, v10}, Landroid/net/wifi/WifiMonitor;->access$102(Landroid/net/wifi/WifiMonitor;Z)Z

    .line 634
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 635
    const-string v7, "WifiMonitor"

    const-string v8, "ap0 get TEMINATING 1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_5
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # setter for: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    invoke-static {v7, v10}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$602(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Z)Z

    .line 678
    :goto_2
    return-void

    .line 595
    :cond_6
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string v8, "ap0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$500(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 596
    if-eqz v5, :cond_8

    .line 597
    # getter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 599
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-virtual {v7}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->isConnected()Z

    move-result v7

    if-nez v7, :cond_3

    .line 600
    const-string v7, "WifiMonitor"

    const-string v8, "Exit because softap disconnected already!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 605
    :cond_7
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$500(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    goto :goto_1

    .line 610
    :cond_8
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$500(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    goto :goto_1

    .line 618
    :cond_9
    # getter for: Landroid/net/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dropping event because monitor ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is stopped"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 642
    :cond_a
    # getter for: Landroid/net/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$000()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "WifiMonitor"

    const-string v8, "Sending to all monitors because there\'s no interface id"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_b
    const/4 v0, 0x0

    .line 644
    .local v0, "done":Z
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # getter for: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;
    invoke-static {v7}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$700(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 646
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;>;"
    :cond_c
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 647
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 648
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "m":Landroid/net/wifi/WifiMonitor;
    check-cast v5, Landroid/net/wifi/WifiMonitor;

    .line 649
    .restart local v5    # "m":Landroid/net/wifi/WifiMonitor;
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$200(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 654
    invoke-direct {p0, v2, v12}, Landroid/net/wifi/WifiMonitor$MonitorThread;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 656
    const/4 v0, 0x1

    goto :goto_3

    .line 660
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    :cond_d
    if-eqz v0, :cond_0

    .line 664
    # getter for: Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$300(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ap0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 665
    # setter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5, v10}, Landroid/net/wifi/WifiMonitor;->access$102(Landroid/net/wifi/WifiMonitor;Z)Z

    .line 666
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 667
    const-string v7, "WifiMonitor"

    const-string v8, "ap0 get TEMINATING 2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_e
    # getter for: Landroid/net/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$000()Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "WifiMonitor"

    const-string v8, "Disconnecting from the supplicant, no more events"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_f
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # setter for: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    invoke-static {v7, v10}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$602(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Z)Z

    goto/16 :goto_2
.end method
