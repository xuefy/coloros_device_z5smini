.class public Landroid/os/nubia/breathlight/Breathinglight;
.super Ljava/lang/Object;
.source "Breathinglight.java"


# static fields
.field public static final BREATHINGLIGHT_ALWAYSE_ON:I = 0x1

.field public static final BREATHINGLIGHT_CHARGING_ON:I = 0x3

.field public static final BREATHINGLIGHT_FADE_IN_ONCE:I = 0x5

.field public static final BREATHINGLIGHT_FADE_OUT_ONCE:I = 0x6

.field public static final BREATHINGLIGHT_LOW_POWER_ON:I = 0x2

.field public static final BREATHINGLIGHT_MISSING_EVENT_ON:I = 0x4

.field public static final BREATHINGLIGHT_OFF:I = 0x0

.field public static final BREATHLIGHT_CHARGED:I = 0x4

.field public static final BREATHLIGHT_CHARGING:I = 0x2

.field public static final BREATHLIGHT_DEFAULT:I = 0x0

.field public static final BREATHLIGHT_LOW_POWER:I = 0x1

.field public static final BREATHLIGHT_MISS_EVENT:I = 0x8

.field public static final BREATHLIGHT_MISS_NOTIFICATION:I = 0x10

.field private static BreathLightLEDOnStatus:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BreathinglightService"

.field private static mBreathLightFlag:I

.field private static mBreathLightSwitch:I


# instance fields
.field mService:Landroid/os/nubia/breathlight/IBreathinglightService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "breathinglight"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/nubia/breathlight/IBreathinglightService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/nubia/breathlight/IBreathinglightService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/nubia/breathlight/Breathinglight;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    .line 57
    return-void
.end method


# virtual methods
.method public clearUnreadData()V
    .locals 1

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/os/nubia/breathlight/Breathinglight;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v0}, Landroid/os/nubia/breathlight/IBreathinglightService;->clearUnreadEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBatteryStatusExt()I
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, tmp:I
    :try_start_0
    iget-object v1, p0, Landroid/os/nubia/breathlight/Breathinglight;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v1}, Landroid/os/nubia/breathlight/IBreathinglightService;->getBatteryStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 122
    :goto_0
    return v0

    .line 119
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getBreathinglight()I
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, tmp:I
    :try_start_0
    iget-object v1, p0, Landroid/os/nubia/breathlight/Breathinglight;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v1}, Landroid/os/nubia/breathlight/IBreathinglightService;->getBrightness()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 94
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSwitchStatusExt()I
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, tmp:I
    :try_start_0
    iget-object v1, p0, Landroid/os/nubia/breathlight/Breathinglight;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v1}, Landroid/os/nubia/breathlight/IBreathinglightService;->getSwitchStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 133
    :goto_0
    return v0

    .line 131
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hasMissEvent()Z
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, tmp:Z
    :try_start_0
    iget-object v1, p0, Landroid/os/nubia/breathlight/Breathinglight;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v1}, Landroid/os/nubia/breathlight/IBreathinglightService;->hasMissEvent()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 103
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hasMissNotification()Z
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, tmp:Z
    :try_start_0
    iget-object v1, p0, Landroid/os/nubia/breathlight/Breathinglight;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v1}, Landroid/os/nubia/breathlight/IBreathinglightService;->hasMissNotification()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 112
    :goto_0
    return v0

    .line 110
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setBreathinglight(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Landroid/os/nubia/breathlight/Breathinglight;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v0, p1}, Landroid/os/nubia/breathlight/IBreathinglightService;->setBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBreathinglight(IZ)V
    .locals 1
    .parameter "value"
    .parameter "isKeyEvent"

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Landroid/os/nubia/breathlight/Breathinglight;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v0, p1, p2}, Landroid/os/nubia/breathlight/IBreathinglightService;->setBrightness2(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method
