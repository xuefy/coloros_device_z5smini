.class public Landroid/os/Haptics;
.super Ljava/lang/Object;
.source "Haptics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public getChipRevision()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceID()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getRingHapticsName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRingHapticsValue(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRingHapticsValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAudioHapticEnabled()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public playEffectSequence(Ljava/lang/String;)V
    .locals 0
    .parameter "sequence"

    .prologue
    .line 41
    return-void
.end method

.method public playEffectSequenceRepeat(Ljava/lang/String;I)V
    .locals 0
    .parameter "sequence"
    .parameter "repeat"

    .prologue
    .line 42
    return-void
.end method

.method public playNubiaEffect(I)V
    .locals 0
    .parameter "effectID"

    .prologue
    .line 54
    return-void
.end method

.method public playNubiaEffect(IZ)V
    .locals 0
    .parameter "effectID"
    .parameter "ignoreFeedBack"

    .prologue
    .line 55
    return-void
.end method

.method public playRingHaptics(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 49
    return-void
.end method

.method public playRingSeq(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 50
    return-void
.end method

.method public playTimedEffect(I)V
    .locals 0
    .parameter "effectDuration"

    .prologue
    .line 40
    return-void
.end method

.method public playeffect(I)V
    .locals 0
    .parameter "effectID"

    .prologue
    .line 38
    return-void
.end method

.method public playeffectforce(I)V
    .locals 0
    .parameter "effectID"

    .prologue
    .line 39
    return-void
.end method

.method public runDiagnostic()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public setAudioHapticEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "appname"

    .prologue
    .line 44
    return-void
.end method

.method public stopPlayingEffect()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
