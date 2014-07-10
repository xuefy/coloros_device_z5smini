.class Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$1;
.super Landroid/os/Handler;
.source "MusicViewWild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 414
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 416
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->access$000(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 419
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .line 420
    .local v0, info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    if-eqz v0, :cond_0

    .line 423
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->access$000(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .line 424
    .local v1, infoItem:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    if-eqz v1, :cond_4

    .line 425
    iget-boolean v2, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mRecycled:Z

    if-nez v2, :cond_2

    .line 426
    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    .line 427
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mIsAyncGettingBitmap:Z

    .line 443
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->position:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 429
    :cond_2
    iget-object v2, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 430
    iget-object v2, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 432
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->access$000(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 433
    iput-object v4, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    .line 434
    const/4 v1, 0x0

    goto :goto_1

    .line 436
    :cond_4
    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 437
    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 438
    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 440
    :cond_5
    iput-object v4, v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    .line 441
    const/4 v0, 0x0

    goto :goto_1

    .line 414
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
