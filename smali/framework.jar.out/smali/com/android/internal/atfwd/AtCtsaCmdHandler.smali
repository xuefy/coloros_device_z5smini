.class public Lcom/android/internal/atfwd/AtCtsaCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtCtsaCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAUSE_TIME:I = 0x190

.field private static final DEFAULT_PRESS_TIME:I = 0xc8

.field private static final EVT_CTSA_CMD:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "AtCtsaCmdHandler"


# instance fields
.field private mEventQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mInjectHandler:Landroid/os/Handler;

.field private mInjectThread:Landroid/os/HandlerThread;

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    .line 172
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 174
    .local v0, service:Landroid/view/IWindowManager;
    if-nez v0, :cond_0

    .line 175
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect to Window Service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_0
    iput-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mWm:Landroid/view/IWindowManager;

    .line 177
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mEventQ:Ljava/util/LinkedList;

    .line 179
    new-instance v1, Lcom/android/internal/atfwd/AtCtsaCmdHandler$1;

    const-string v2, "CTSA Inject Thread"

    const/4 v3, -0x8

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$1;-><init>(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThread:Landroid/os/HandlerThread;

    .line 182
    iget-object v1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 183
    new-instance v1, Lcom/android/internal/atfwd/AtCtsaCmdHandler$2;

    iget-object v2, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$2;-><init>(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectHandler:Landroid/os/Handler;

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Landroid/view/MotionEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->injectPointerEvent(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method private injectPointerEvent(Landroid/view/MotionEvent;Z)V
    .locals 3
    .parameter "event"
    .parameter "sync"

    .prologue
    .line 286
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 287
    const-string v0, "Input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InjectPointerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 291
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    const-string v0, "+CTSA"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 11
    .parameter "cmd"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 226
    const/4 v4, 0x0

    .line 227
    .local v4, valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    const/4 v0, 0x0

    .line 228
    .local v0, dead:Z
    const/4 v3, 0x0

    .line 229
    .local v3, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 231
    .local v2, isAtCmdRespOK:Z
    const-string v6, "AtCtsaCmdHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCommand: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v6, "AtCtsaCmdHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OpCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getOpcode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getOpcode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 267
    const-string v6, "AtCtsaCmdHandler"

    const-string v9, "CTSA OpCode Error"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v3

    .line 272
    :goto_0
    if-eqz v2, :cond_2

    new-instance v6, Lcom/android/internal/atfwd/AtCmdResponse;

    invoke-direct {v6, v7, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    :goto_1
    return-object v6

    .line 238
    :sswitch_0
    const/4 v2, 0x1

    .line 239
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ": (0-4)"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    goto :goto_0

    .line 244
    :sswitch_1
    iget-object v6, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v7

    .line 245
    :goto_2
    if-nez v0, :cond_1

    .line 251
    :try_start_0
    new-instance v5, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;

    invoke-direct {v5, p0, p1}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;-><init>(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Lcom/android/internal/atfwd/AtCmd;)V
    :try_end_0
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v4           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .local v5, valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    const/4 v2, 0x1

    .line 253
    :try_start_1
    const-string v6, "AtCtsaCmdHandler"

    const-string v9, "Queuing command"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v6, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-static {v6, v9, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 255
    const-string v6, "AtCtsaCmdHandler"

    const-string v9, "Command queued"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 259
    .end local v5           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v4       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    goto :goto_0

    :cond_0
    move v0, v8

    .line 244
    goto :goto_2

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
    :goto_3
    const-string v6, "AtCtsaCmdHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing command "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/16 v6, 0x19

    invoke-virtual {p1, v6}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v3

    .line 259
    goto :goto_0

    .line 261
    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
    :cond_1
    invoke-virtual {p1, v7}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v3

    .line 263
    goto :goto_0

    .line 272
    :cond_2
    new-instance v6, Lcom/android/internal/atfwd/AtCmdResponse;

    invoke-direct {v6, v8, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 256
    .end local v4           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v4       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    goto :goto_3

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method
