.class Lcom/android/internal/policy/impl/keyguard/MusicViewWild$4;
.super Ljava/lang/Object;
.source "MusicViewWild.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->initView()V
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
    .line 1246
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1248
    const-string v1, "MusicViewWild"

    const-string v2, "mGallery OnClickListener  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1800(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1250
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1800(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1251
    return-void
.end method
