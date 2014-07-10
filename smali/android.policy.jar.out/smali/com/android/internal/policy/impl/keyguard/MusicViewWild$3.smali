.class Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;
.super Landroid/content/BroadcastReceiver;
.source "MusicViewWild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V
    .locals 0
    .parameter

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1185
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p2, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->setmAudioId(J)V

    .line 1186
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    move-result-object v1

    const-string v2, "artist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->setArtist(Ljava/lang/String;)V

    .line 1187
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    move-result-object v1

    const-string v2, "album"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->setAlum(Ljava/lang/String;)V

    .line 1188
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    move-result-object v1

    const-string v2, "track"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->setTrack(Ljava/lang/String;)V

    .line 1189
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    move-result-object v1

    const-string v2, "playing"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->setStatus(Z)V

    .line 1190
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    move-result-object v1

    const-string v2, "playpos"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->setmIndex(I)V

    .line 1191
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1800(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1214
    :cond_1
    :goto_0
    return-void

    .line 1192
    :cond_2
    const-string v1, "com.android.music.musicservicecommand.sendlist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1193
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p2, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->setmAudioId(J)V

    .line 1194
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    move-result-object v1

    const-string v2, "artist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->setArtist(Ljava/lang/String;)V

    .line 1195
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    move-result-object v1

    const-string v2, "album"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->setAlum(Ljava/lang/String;)V

    .line 1196
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    move-result-object v1

    const-string v2, "track"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->setTrack(Ljava/lang/String;)V

    .line 1197
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    move-result-object v1

    const-string v2, "playing"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->setStatus(Z)V

    .line 1198
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    move-result-object v1

    const-string v2, "playpos"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->setmIndex(I)V

    .line 1199
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    const-string v2, "playlist_key"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPlaylist:[J
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$2002(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;[J)[J

    .line 1200
    const-string v1, "MusicViewWild"

    const-string v2, "mMusicReceiver01"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPlaylist:[J
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$2000(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)[J

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1204
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1800(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1206
    :cond_3
    const-string v1, "com.android.music.musicservicecommand.updatelist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1207
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    const-string v2, "playlist_key"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPlaylist:[J
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$2002(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;[J)[J

    .line 1208
    const-string v1, "MusicViewWild"

    const-string v2, "mMusicReceiver03"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPlaylist:[J
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$2000(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)[J

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1210
    const-string v1, "MusicViewWild"

    const-string v2, "mMusicReceiver04"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1800(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
