.class Lcom/android/internal/telephony/AsyncHandleContentResolver$1;
.super Ljava/lang/Thread;
.source "AsyncHandleContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/AsyncHandleContentResolver;->allocate(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cookie:Ljava/lang/Object;

.field final synthetic val$listener:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;

.field final synthetic val$orderBy:Ljava/lang/String;

.field final synthetic val$projection:[Ljava/lang/String;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$selectionArgs:[Ljava/lang/String;

.field final synthetic val$token:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/AsyncHandleContentResolver;Landroid/content/Context;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    iput-object p2, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$listener:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;

    iput p4, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$token:I

    iput-object p5, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$cookie:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$uri:Landroid/net/Uri;

    iput-object p7, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$projection:[Ljava/lang/String;

    iput-object p8, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$selection:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$selectionArgs:[Ljava/lang/String;

    iput-object p10, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$orderBy:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 207
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    new-instance v1, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;

    iget-object v2, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    iget-object v3, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;-><init>(Lcom/android/internal/telephony/AsyncHandleContentResolver;Landroid/content/Context;)V

    #setter for: Lcom/android/internal/telephony/AsyncHandleContentResolver;->mHandler:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->access$102(Lcom/android/internal/telephony/AsyncHandleContentResolver;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;)Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    #getter for: Lcom/android/internal/telephony/AsyncHandleContentResolver;->mHandler:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;
    invoke-static {v0}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->access$100(Lcom/android/internal/telephony/AsyncHandleContentResolver;)Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$listener:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->setQueryListener(Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    #getter for: Lcom/android/internal/telephony/AsyncHandleContentResolver;->mHandler:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;
    invoke-static {v0}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->access$100(Lcom/android/internal/telephony/AsyncHandleContentResolver;)Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$token:I

    iget-object v2, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$cookie:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$projection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$selection:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$selectionArgs:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->val$orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 215
    return-void
.end method
