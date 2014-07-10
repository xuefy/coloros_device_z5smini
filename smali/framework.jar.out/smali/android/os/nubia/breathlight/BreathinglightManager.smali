.class public Landroid/os/nubia/breathlight/BreathinglightManager;
.super Ljava/lang/Object;
.source "BreathinglightManager.java"


# static fields
.field private static mBatteryConnectionStatus:I

.field private static mBreathLightFlag:I

.field private static mBreathLightSwitch:I

.field private static mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    .line 33
    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightSwitch:I

    .line 35
    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBatteryConnectionStatus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/nubia/breathlight/Breathinglight;

    invoke-direct {v0}, Landroid/os/nubia/breathlight/Breathinglight;-><init>()V

    sput-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    .line 43
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    invoke-virtual {v0}, Landroid/os/nubia/breathlight/Breathinglight;->getSwitchStatusExt()I

    move-result v0

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightSwitch:I

    .line 44
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    invoke-virtual {v0}, Landroid/os/nubia/breathlight/Breathinglight;->getBatteryStatusExt()I

    move-result v0

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBatteryConnectionStatus:I

    .line 45
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    invoke-virtual {v0}, Landroid/os/nubia/breathlight/Breathinglight;->hasMissEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    .line 50
    :goto_0
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    invoke-virtual {v0}, Landroid/os/nubia/breathlight/Breathinglight;->hasMissNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    .line 55
    :goto_1
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBatteryConnectionStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 56
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    .line 60
    :goto_2
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBatteryConnectionStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 61
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    .line 65
    :goto_3
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBatteryConnectionStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 66
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    .line 70
    :goto_4
    return-void

    .line 48
    :cond_0
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, -0x9

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    goto :goto_0

    .line 53
    :cond_1
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, -0x11

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    goto :goto_1

    .line 58
    :cond_2
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, -0x5

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    goto :goto_2

    .line 63
    :cond_3
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, -0x3

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    goto :goto_3

    .line 68
    :cond_4
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, -0x2

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    goto :goto_4
.end method

.method public static clearBreathLightFlag()I
    .locals 1

    .prologue
    .line 115
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, -0x9

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    .line 116
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    return v0
.end method

.method public static getBreathLightFlag()I
    .locals 1

    .prologue
    .line 111
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    return v0
.end method

.method public static getBreathLightSwitch()I
    .locals 1

    .prologue
    .line 81
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightSwitch:I

    return v0
.end method

.method public static setBreathLightFlag(IZ)V
    .locals 2
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    or-int/2addr v0, p0

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    .line 107
    :goto_0
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->setLightStatus()V

    .line 108
    return-void

    .line 105
    :cond_0
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v0, v1

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    goto :goto_0
.end method

.method public static setBreathLightSwitch(IZ)V
    .locals 2
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightSwitch:I

    or-int/2addr v0, p0

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightSwitch:I

    .line 78
    :goto_0
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->setLightStatus()V

    .line 79
    return-void

    .line 76
    :cond_0
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightSwitch:I

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v0, v1

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightSwitch:I

    goto :goto_0
.end method

.method private static setLightStatus()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 87
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightSwitch:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    invoke-virtual {v0, v1, v2}, Landroid/os/nubia/breathlight/Breathinglight;->setBreathinglight(IZ)V

    .line 100
    :goto_0
    return-void

    .line 89
    :cond_0
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightSwitch:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    invoke-virtual {v0, v1, v2}, Landroid/os/nubia/breathlight/Breathinglight;->setBreathinglight(IZ)V

    goto :goto_0

    .line 91
    :cond_1
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightSwitch:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 92
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/nubia/breathlight/Breathinglight;->setBreathinglight(IZ)V

    goto :goto_0

    .line 93
    :cond_2
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightSwitch:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 94
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/nubia/breathlight/Breathinglight;->setBreathinglight(IZ)V

    goto :goto_0

    .line 95
    :cond_3
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightSwitch:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 96
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/nubia/breathlight/Breathinglight;->setBreathinglight(IZ)V

    goto :goto_0

    .line 98
    :cond_4
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    invoke-virtual {v0, v2, v2}, Landroid/os/nubia/breathlight/Breathinglight;->setBreathinglight(IZ)V

    goto :goto_0
.end method

.method public static updateBreathLightFlag()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    invoke-virtual {v0}, Landroid/os/nubia/breathlight/Breathinglight;->getBatteryStatusExt()I

    move-result v0

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBatteryConnectionStatus:I

    .line 124
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    invoke-virtual {v0}, Landroid/os/nubia/breathlight/Breathinglight;->hasMissEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    .line 129
    :goto_0
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    invoke-virtual {v0}, Landroid/os/nubia/breathlight/Breathinglight;->hasMissNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    .line 134
    :goto_1
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBatteryConnectionStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 135
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    .line 139
    :goto_2
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBatteryConnectionStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 140
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    .line 144
    :goto_3
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBatteryConnectionStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 145
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    .line 150
    :goto_4
    return-void

    .line 127
    :cond_0
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, -0x9

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    goto :goto_0

    .line 132
    :cond_1
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, -0x11

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    goto :goto_1

    .line 137
    :cond_2
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, -0x5

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    goto :goto_2

    .line 142
    :cond_3
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, -0x3

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    goto :goto_3

    .line 147
    :cond_4
    sget v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    and-int/lit8 v0, v0, -0x2

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightFlag:I

    goto :goto_4
.end method

.method public static updateBreathLightStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    const/4 v1, 0x1

    .line 159
    if-nez p0, :cond_1

    .line 160
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->updateSwitchStatusExt2()V

    .line 161
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->updateBreathLightFlag()V

    .line 162
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->setLightStatus()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    if-ne p0, v1, :cond_2

    .line 164
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    invoke-virtual {v0, v1}, Landroid/os/nubia/breathlight/Breathinglight;->setBreathinglight(I)V

    goto :goto_0

    .line 165
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 166
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/nubia/breathlight/Breathinglight;->setBreathinglight(I)V

    goto :goto_0

    .line 167
    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    .line 168
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/nubia/breathlight/Breathinglight;->setBreathinglight(I)V

    goto :goto_0

    .line 169
    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 170
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    invoke-virtual {v0}, Landroid/os/nubia/breathlight/Breathinglight;->clearUnreadData()V

    .line 171
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->updateSwitchStatusExt2()V

    .line 172
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->updateBreathLightFlag()V

    .line 173
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->setLightStatus()V

    goto :goto_0
.end method

.method public static updateSwitchStatusExt2()V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathinglight:Landroid/os/nubia/breathlight/Breathinglight;

    invoke-virtual {v0}, Landroid/os/nubia/breathlight/Breathinglight;->getSwitchStatusExt()I

    move-result v0

    sput v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mBreathLightSwitch:I

    .line 121
    return-void
.end method
