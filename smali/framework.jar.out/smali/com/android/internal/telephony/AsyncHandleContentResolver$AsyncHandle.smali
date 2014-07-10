.class Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;
.super Landroid/content/AsyncQueryHandler;
.source "AsyncHandleContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AsyncHandleContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncHandle"
.end annotation


# instance fields
.field private mDeleteListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncDeleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInsertListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/AsyncHandleContentResolver;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    .line 116
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->mDeleteListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncDeleteListener;

    .line 175
    .local v0, listener:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncDeleteListener;
    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncDeleteListener;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    #calls: Lcom/android/internal/telephony/AsyncHandleContentResolver;->release()V
    invoke-static {v1}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->access$000(Lcom/android/internal/telephony/AsyncHandleContentResolver;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->mInsertListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;

    .line 155
    .local v0, listener:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;
    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    #calls: Lcom/android/internal/telephony/AsyncHandleContentResolver;->release()V
    invoke-static {v1}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->access$000(Lcom/android/internal/telephony/AsyncHandleContentResolver;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->mQueryListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;

    .line 143
    .local v0, listener:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;
    if-eqz v0, :cond_1

    .line 144
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    #calls: Lcom/android/internal/telephony/AsyncHandleContentResolver;->release()V
    invoke-static {v1}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->access$000(Lcom/android/internal/telephony/AsyncHandleContentResolver;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    if-eqz p3, :cond_0

    .line 147
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->mUpdateListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncUpdateListener;

    .line 165
    .local v0, listener:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncUpdateListener;
    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncUpdateListener;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 167
    iget-object v1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->this$0:Lcom/android/internal/telephony/AsyncHandleContentResolver;

    #calls: Lcom/android/internal/telephony/AsyncHandleContentResolver;->release()V
    invoke-static {v1}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->access$000(Lcom/android/internal/telephony/AsyncHandleContentResolver;)V

    .line 169
    :cond_0
    return-void
.end method

.method public setDeleteListener(Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncDeleteListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 136
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->mDeleteListener:Ljava/lang/ref/WeakReference;

    .line 137
    return-void
.end method

.method public setInsertListener(Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 128
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->mInsertListener:Ljava/lang/ref/WeakReference;

    .line 129
    return-void
.end method

.method public setQueryListener(Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->mQueryListener:Ljava/lang/ref/WeakReference;

    .line 125
    return-void
.end method

.method public setUpdateListener(Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 132
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->mUpdateListener:Ljava/lang/ref/WeakReference;

    .line 133
    return-void
.end method
