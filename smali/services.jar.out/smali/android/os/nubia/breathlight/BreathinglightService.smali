.class public Landroid/os/nubia/breathlight/BreathinglightService;
.super Landroid/os/nubia/breathlight/IBreathinglightService$Stub;
.source "BreathinglightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;,
        Landroid/os/nubia/breathlight/BreathinglightService$newMmsContentObserver;
    }
.end annotation


# static fields
.field private static final KEYGUARD_NOTIFICATION_ACTION:Ljava/lang/String; = "com.android.internal.policy.notifications"

.field private static final MSG_NOTIFICATION_COMING:I = 0x0

.field private static final MSG_NOTIFICATION_DELETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BreathinglightService"


# instance fields
.field private final CALLER_URI:Landroid/net/Uri;

.field private final MMS_URI:Landroid/net/Uri;

.field private final SMS_URI:Landroid/net/Uri;

.field private mBatteryStatus:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mMissCall:Z

.field private mMissMsg:Z

.field private mNotificationsPkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchStatus:I

.field private oldCall:I

.field private oldMmsSMS:I

.field pm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/os/nubia/breathlight/IBreathinglightService$Stub;-><init>()V

    .line 45
    iput v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->oldMmsSMS:I

    .line 46
    iput v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->oldCall:I

    .line 48
    iput v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    .line 49
    iput-boolean v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mMissCall:Z

    .line 50
    iput-boolean v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mMissMsg:Z

    .line 56
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->SMS_URI:Landroid/net/Uri;

    .line 57
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->MMS_URI:Landroid/net/Uri;

    .line 58
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->CALLER_URI:Landroid/net/Uri;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mNotificationsPkg:Ljava/util/ArrayList;

    .line 318
    new-instance v0, Landroid/os/nubia/breathlight/BreathinglightService$2;

    invoke-direct {v0, p0}, Landroid/os/nubia/breathlight/BreathinglightService$2;-><init>(Landroid/os/nubia/breathlight/BreathinglightService;)V

    iput-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    .line 66
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->pm:Landroid/os/PowerManager;

    .line 68
    invoke-direct {p0}, Landroid/os/nubia/breathlight/BreathinglightService;->registerUnreadReceiver()V

    .line 69
    invoke-direct {p0}, Landroid/os/nubia/breathlight/BreathinglightService;->batteryConnectionReceiver()V

    .line 70
    invoke-direct {p0}, Landroid/os/nubia/breathlight/BreathinglightService;->notificationReceiver()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Landroid/os/nubia/breathlight/BreathinglightService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->oldMmsSMS:I

    return v0
.end method

.method static synthetic access$002(Landroid/os/nubia/breathlight/BreathinglightService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Landroid/os/nubia/breathlight/BreathinglightService;->oldMmsSMS:I

    return p1
.end method

.method static synthetic access$102(Landroid/os/nubia/breathlight/BreathinglightService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mMissMsg:Z

    return p1
.end method

.method static synthetic access$200(Landroid/os/nubia/breathlight/BreathinglightService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/os/nubia/breathlight/BreathinglightService;->updateMissEvent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/os/nubia/breathlight/BreathinglightService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->oldCall:I

    return v0
.end method

.method static synthetic access$302(Landroid/os/nubia/breathlight/BreathinglightService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Landroid/os/nubia/breathlight/BreathinglightService;->oldCall:I

    return p1
.end method

.method static synthetic access$402(Landroid/os/nubia/breathlight/BreathinglightService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mMissCall:Z

    return p1
.end method

.method static synthetic access$572(Landroid/os/nubia/breathlight/BreathinglightService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iget v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mBatteryStatus:I

    and-int/2addr v0, p1

    iput v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mBatteryStatus:I

    return v0
.end method

.method static synthetic access$576(Landroid/os/nubia/breathlight/BreathinglightService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iget v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mBatteryStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mBatteryStatus:I

    return v0
.end method

.method static synthetic access$600(Landroid/os/nubia/breathlight/BreathinglightService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/os/nubia/breathlight/BreathinglightService;->handleNotificationAdd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/os/nubia/breathlight/BreathinglightService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/os/nubia/breathlight/BreathinglightService;->handleNotificationDel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/os/nubia/breathlight/BreathinglightService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private batteryConnectionReceiver()V
    .locals 3

    .prologue
    .line 260
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/nubia/breathlight/BreathinglightService$1;

    invoke-direct {v2, p0}, Landroid/os/nubia/breathlight/BreathinglightService$1;-><init>(Landroid/os/nubia/breathlight/BreathinglightService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    return-void
.end method

.method private doSetBrightness(I)V
    .locals 0
    .parameter "bcase"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/os/nubia/breathlight/BreathinglightService;->setBrightnessJNI(I)V

    .line 108
    return-void
.end method

.method private handleNotificationAdd(Ljava/lang/String;)V
    .locals 5
    .parameter "newPkg"

    .prologue
    .line 334
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mNotificationsPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 335
    iget-object v2, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mNotificationsPkg:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 336
    .local v1, tempPkg:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    .end local v1           #tempPkg:Ljava/lang/String;
    :goto_1
    return-void

    .line 334
    .restart local v1       #tempPkg:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    .end local v1           #tempPkg:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mNotificationsPkg:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBreathLightFlag(IZ)V

    .line 342
    const-string v2, "BreathinglightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNotificationAdd size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mNotificationsPkg:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleNotificationDel(Ljava/lang/String;)V
    .locals 5
    .parameter "newPkg"

    .prologue
    .line 347
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mNotificationsPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 348
    iget-object v2, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mNotificationsPkg:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 349
    .local v1, tempPkg:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    iget-object v2, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mNotificationsPkg:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 359
    .end local v1           #tempPkg:Ljava/lang/String;
    :goto_1
    return-void

    .line 347
    .restart local v1       #tempPkg:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    .end local v1           #tempPkg:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mNotificationsPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 355
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBreathLightFlag(IZ)V

    .line 358
    :cond_2
    const-string v2, "BreathinglightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNotificationDel size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mNotificationsPkg:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private notificationReceiver()V
    .locals 3

    .prologue
    .line 362
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 363
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.policy.notifications"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/nubia/breathlight/BreathinglightService$3;

    invoke-direct {v2, p0}, Landroid/os/nubia/breathlight/BreathinglightService$3;-><init>(Landroid/os/nubia/breathlight/BreathinglightService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 380
    return-void
.end method

.method private registerUnreadReceiver()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 148
    iget-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService;->SMS_URI:Landroid/net/Uri;

    new-instance v2, Landroid/os/nubia/breathlight/BreathinglightService$newMmsContentObserver;

    iget-object v3, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v5}, Landroid/os/nubia/breathlight/BreathinglightService$newMmsContentObserver;-><init>(Landroid/os/nubia/breathlight/BreathinglightService;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    iget-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService;->MMS_URI:Landroid/net/Uri;

    new-instance v2, Landroid/os/nubia/breathlight/BreathinglightService$newMmsContentObserver;

    iget-object v3, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v5}, Landroid/os/nubia/breathlight/BreathinglightService$newMmsContentObserver;-><init>(Landroid/os/nubia/breathlight/BreathinglightService;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 152
    iget-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService;->CALLER_URI:Landroid/net/Uri;

    new-instance v2, Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;

    iget-object v3, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v5}, Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;-><init>(Landroid/os/nubia/breathlight/BreathinglightService;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 155
    return-void
.end method

.method private updateMissEvent(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/16 v1, 0x8

    .line 252
    iget-boolean v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mMissCall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mMissMsg:Z

    if-eqz v0, :cond_1

    .line 253
    :cond_0
    const/4 v0, 0x1

    invoke-static {v1, v0}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBreathLightFlag(IZ)V

    .line 258
    :goto_0
    return-void

    .line 255
    :cond_1
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBreathLightFlag(IZ)V

    goto :goto_0
.end method

.method private updateSwitchStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_light_event_miss"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    .line 80
    :goto_0
    iget-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_light_app_msg"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    .line 86
    :goto_1
    iget-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_light_charge"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    .line 92
    :goto_2
    iget-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_light_battery_low"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iget v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    .line 98
    :goto_3
    return-void

    .line 78
    :cond_0
    iget v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    goto :goto_0

    .line 84
    :cond_1
    iget v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    goto :goto_1

    .line 90
    :cond_2
    iget v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    goto :goto_2

    .line 96
    :cond_3
    iget v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    goto :goto_3
.end method


# virtual methods
.method public clearUnreadEvent()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mMissMsg:Z

    .line 310
    iput-boolean v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mMissCall:Z

    .line 311
    iget-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mNotificationsPkg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 312
    return-void
.end method

.method public getBatteryStatus()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mBatteryStatus:I

    return v0
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/os/nubia/breathlight/BreathinglightService;->getBrightnessJNI()I

    move-result v0

    .line 101
    .local v0, tmp:I
    return v0
.end method

.method native getBrightnessJNI()I
.end method

.method public getMissedCallerNum()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 159
    const/4 v7, 0x0

    .line 160
    .local v7, count:I
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move v8, v7

    .line 173
    .end local v7           #count:I
    .local v8, count:I
    :goto_0
    return v8

    .line 163
    .end local v8           #count:I
    .restart local v7       #count:I
    :cond_0
    const-string v3, "type = 3 and new = 1 and INCOMING_CALL_TIME > 0"

    .line 164
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    .local v6, callerCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 168
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 170
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v8, v7

    .line 173
    .end local v7           #count:I
    .restart local v8       #count:I
    goto :goto_0

    .line 170
    .end local v8           #count:I
    .restart local v7       #count:I
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getSwitchStatus()I
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/os/nubia/breathlight/BreathinglightService;->updateSwitchStatus()V

    .line 305
    iget v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mSwitchStatus:I

    return v0
.end method

.method public getUnreadMmsNum()I
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 176
    const/4 v12, 0x0

    .line 177
    .local v12, smsCount:I
    const/4 v10, 0x0

    .line 179
    .local v10, mmsCount:I
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move v1, v12

    .line 203
    :goto_0
    return v1

    .line 182
    :cond_0
    const-string v3, "read=0"

    .line 183
    .local v3, selection:Ljava/lang/String;
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService;->SMS_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 185
    .local v13, smsCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_1

    .line 187
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 189
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_1
    const-string v7, "read=0 and (m_type=130 or m_type=132) and (thread_id is not null and thread_id in (select _id from threads))"

    .line 194
    .local v7, mmSelection:Ljava/lang/String;
    iget-object v5, p0, Landroid/os/nubia/breathlight/BreathinglightService;->MMS_URI:Landroid/net/Uri;

    move-object v4, v0

    move-object v6, v2

    move-object v8, v2

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 196
    .local v11, mmsCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 198
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v10

    .line 200
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_2
    add-int v1, v12, v10

    goto :goto_0

    .line 189
    .end local v7           #mmSelection:Ljava/lang/String;
    .end local v11           #mmsCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    .line 200
    .restart local v7       #mmSelection:Ljava/lang/String;
    .restart local v11       #mmsCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public hasMissEvent()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mMissMsg:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mMissCall:Z

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMissNotification()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->mNotificationsPkg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 384
    const/4 v0, 0x1

    .line 386
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBrightness(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 113
    const-string v0, "BreathinglightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Landroid/os/nubia/breathlight/BreathinglightService;->getBrightness()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/os/nubia/breathlight/BreathinglightService;->getBrightness()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Landroid/os/nubia/breathlight/BreathinglightService;->doSetBrightness(I)V

    .line 121
    :cond_1
    return-void
.end method

.method public setBrightness2(IZ)V
    .locals 1
    .parameter "value"
    .parameter "isKeyEvent"

    .prologue
    .line 125
    if-eqz p2, :cond_1

    .line 126
    invoke-virtual {p0}, Landroid/os/nubia/breathlight/BreathinglightService;->getBrightness()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 127
    invoke-direct {p0, p1}, Landroid/os/nubia/breathlight/BreathinglightService;->doSetBrightness(I)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService;->pm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0, p1}, Landroid/os/nubia/breathlight/BreathinglightService;->doSetBrightness(I)V

    goto :goto_0
.end method

.method native setBrightnessJNI(I)V
.end method
