.class Landroid/preference/VolumePreference$SeekBarVolumizer$2;
.super Landroid/content/BroadcastReceiver;
.source "VolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/VolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$2;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.ztemt.globalaction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$2;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$2;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$100(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    #setter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingMode:I
    invoke-static {v1, v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$302(Landroid/preference/VolumePreference$SeekBarVolumizer;I)I

    .line 286
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$2;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$2;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$100(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$2;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$200(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    #setter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I
    invoke-static {v1, v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$402(Landroid/preference/VolumePreference$SeekBarVolumizer;I)I

    .line 288
    :cond_0
    return-void
.end method
