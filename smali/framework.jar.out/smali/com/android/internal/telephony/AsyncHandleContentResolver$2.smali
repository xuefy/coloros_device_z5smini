.class Lcom/android/internal/telephony/AsyncHandleContentResolver$2;
.super Ljava/lang/Thread;
.source "AsyncHandleContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/AsyncHandleContentResolver;->allocate(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cookie:Ljava/lang/Object;

.field final synthetic val$initialValues:Landroid/content/ContentValues;

.field final synthetic val$listener:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;

.field final synthetic val$token:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/AsyncHandleContentResolver;Landroid/content/Context;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    iput-object p2, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->val$listener:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;

    iput p4, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->val$token:I

    iput-object p5, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->val$cookie:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->val$uri:Landroid/net/Uri;

    iput-object p7, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->val$initialValues:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 227
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    new-instance v1, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;

    iget-object v2, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    iget-object v3, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;-><init>(Lcom/android/internal/telephony/AsyncHandleContentResolver;Landroid/content/Context;)V

    #setter for: Lcom/android/internal/telephony/AsyncHandleContentResolver;->mHandler:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->access$102(Lcom/android/internal/telephony/AsyncHandleContentResolver;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;)Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    #getter for: Lcom/android/internal/telephony/AsyncHandleContentResolver;->mHandler:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;
    invoke-static {v0}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->access$100(Lcom/android/internal/telephony/AsyncHandleContentResolver;)Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->val$listener:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->setInsertListener(Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    #getter for: Lcom/android/internal/telephony/AsyncHandleContentResolver;->mHandler:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;
    invoke-static {v0}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->access$100(Lcom/android/internal/telephony/AsyncHandleContentResolver;)Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->val$token:I

    iget-object v2, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->val$cookie:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->val$uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->val$initialValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 233
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 234
    return-void
.end method
