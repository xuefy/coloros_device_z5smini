.class Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$2;
.super Landroid/os/Handler;
.source "MusicViewWild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->initWorkerThreadHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 558
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 569
    :goto_0
    return-void

    .line 560
    :pswitch_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .line 561
    .local v8, infoBack:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    iget v0, v8, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->access$100(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v8, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mAudioId:J

    const-wide/16 v3, -0x1

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mWidth:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->access$200(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mHeight:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->access$300(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$DataUtils;->getArtworkFromFile(Landroid/content/Context;JJII)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    .line 563
    .local v7, album:Landroid/graphics/drawable/BitmapDrawable;
    iput-object v7, v8, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    .line 565
    .end local v7           #album:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->access$400(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 566
    .local v9, msgsetalbum:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->access$400(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method
