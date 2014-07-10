.class Landroid/net/wifi/WifiManager$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceHandler"
.end annotation


# instance fields
.field private weakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/net/wifi/WifiManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/net/wifi/WifiManager;)V
    .locals 1
    .parameter "looper"
    .parameter "m"

    .prologue
    .line 1379
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1380
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->weakRef:Ljava/lang/ref/WeakReference;

    .line 1381
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "message"

    .prologue
    .line 1385
    iget-object v5, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->weakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1386
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v4, :cond_1

    .line 1388
    const-string v5, "WifiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "message: what="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; message.arg1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1391
    :cond_1
    #getter for: Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 1392
    .local v0, channel:Lcom/android/internal/util/AsyncChannel;
    iget v5, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/net/wifi/WifiManager;->removeListener(I)Ljava/lang/Object;
    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->access$100(Landroid/net/wifi/WifiManager;I)Ljava/lang/Object;

    move-result-object v2

    .line 1393
    .local v2, listener:Ljava/lang/Object;
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 1395
    :sswitch_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_2

    .line 1396
    const v5, 0x11001

    invoke-virtual {v0, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1404
    :goto_1
    #getter for: Landroid/net/wifi/WifiManager;->mConnected:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v4}, Landroid/net/wifi/WifiManager;->access$200(Landroid/net/wifi/WifiManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 1398
    :cond_2
    const-string v5, "WifiManager"

    const-string v6, "Failed to set up channel connection"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1410
    :sswitch_2
    const-string v5, "WifiManager"

    const-string v6, "Channel connection lost"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnected()V

    goto :goto_0

    .line 1423
    :sswitch_3
    if-eqz v2, :cond_0

    .line 1424
    check-cast v2, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v2           #listener:Ljava/lang/Object;
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v5}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    goto :goto_0

    .line 1433
    .restart local v2       #listener:Ljava/lang/Object;
    :sswitch_4
    if-eqz v2, :cond_0

    .line 1434
    check-cast v2, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v2           #listener:Ljava/lang/Object;
    invoke-interface {v2}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    goto :goto_0

    .line 1438
    .restart local v2       #listener:Ljava/lang/Object;
    :sswitch_5
    if-eqz v2, :cond_0

    .line 1439
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WpsResult;

    .local v3, result:Landroid/net/wifi/WpsResult;
    move-object v5, v2

    .line 1440
    check-cast v5, Landroid/net/wifi/WifiManager$WpsListener;

    iget-object v6, v3, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/net/wifi/WifiManager$WpsListener;->onStartSuccess(Ljava/lang/String;)V

    .line 1442
    #getter for: Landroid/net/wifi/WifiManager;->mListenerMapLock:Ljava/lang/Object;
    invoke-static {v4}, Landroid/net/wifi/WifiManager;->access$300(Landroid/net/wifi/WifiManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1443
    :try_start_0
    #getter for: Landroid/net/wifi/WifiManager;->mListenerMap:Landroid/util/SparseArray;
    invoke-static {v4}, Landroid/net/wifi/WifiManager;->access$400(Landroid/net/wifi/WifiManager;)Landroid/util/SparseArray;

    move-result-object v5

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1444
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1448
    .end local v3           #result:Landroid/net/wifi/WpsResult;
    :sswitch_6
    if-eqz v2, :cond_0

    .line 1449
    check-cast v2, Landroid/net/wifi/WifiManager$WpsListener;

    .end local v2           #listener:Ljava/lang/Object;
    invoke-interface {v2}, Landroid/net/wifi/WifiManager$WpsListener;->onCompletion()V

    goto :goto_0

    .line 1453
    .restart local v2       #listener:Ljava/lang/Object;
    :sswitch_7
    if-eqz v2, :cond_0

    .line 1454
    check-cast v2, Landroid/net/wifi/WifiManager$WpsListener;

    .end local v2           #listener:Ljava/lang/Object;
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v5}, Landroid/net/wifi/WifiManager$WpsListener;->onFailure(I)V

    goto :goto_0

    .line 1458
    .restart local v2       #listener:Ljava/lang/Object;
    :sswitch_8
    if-eqz v2, :cond_0

    .line 1459
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/RssiPacketCountInfo;

    .line 1460
    .local v1, info:Landroid/net/wifi/RssiPacketCountInfo;
    if-eqz v1, :cond_3

    .line 1461
    check-cast v2, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v2           #listener:Ljava/lang/Object;
    iget v5, v1, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    iget v6, v1, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    add-int/2addr v5, v6

    invoke-interface {v2, v5}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onSuccess(I)V

    goto/16 :goto_0

    .line 1463
    .restart local v2       #listener:Ljava/lang/Object;
    :cond_3
    check-cast v2, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v2           #listener:Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_0

    .line 1467
    .end local v1           #info:Landroid/net/wifi/RssiPacketCountInfo;
    .restart local v2       #listener:Ljava/lang/Object;
    :sswitch_9
    if-eqz v2, :cond_0

    .line 1468
    check-cast v2, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v2           #listener:Ljava/lang/Object;
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v5}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_0

    .line 1393
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11002 -> :sswitch_0
        0x11004 -> :sswitch_2
        0x25002 -> :sswitch_3
        0x25003 -> :sswitch_4
        0x25005 -> :sswitch_3
        0x25006 -> :sswitch_4
        0x25008 -> :sswitch_3
        0x25009 -> :sswitch_4
        0x2500b -> :sswitch_5
        0x2500c -> :sswitch_7
        0x2500d -> :sswitch_6
        0x2500f -> :sswitch_3
        0x25010 -> :sswitch_4
        0x25012 -> :sswitch_3
        0x25013 -> :sswitch_4
        0x25015 -> :sswitch_8
        0x25016 -> :sswitch_9
    .end sparse-switch
.end method
