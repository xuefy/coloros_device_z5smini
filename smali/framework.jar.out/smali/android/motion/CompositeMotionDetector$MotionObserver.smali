.class Landroid/motion/CompositeMotionDetector$MotionObserver;
.super Landroid/database/ContentObserver;
.source "CompositeMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/motion/CompositeMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionObserver"
.end annotation


# instance fields
.field private mCount:I

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Landroid/motion/CompositeMotionDetector;


# direct methods
.method public constructor <init>(Landroid/motion/CompositeMotionDetector;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 122
    iput-object p1, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->this$0:Landroid/motion/CompositeMotionDetector;

    .line 123
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 124
    #getter for: Landroid/motion/CompositeMotionDetector;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/motion/CompositeMotionDetector;->access$000(Landroid/motion/CompositeMotionDetector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->mResolver:Landroid/content/ContentResolver;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->mCount:I

    .line 126
    return-void
.end method

.method private observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_turnover"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    iget-object v0, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_shake"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    iget-object v0, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_rlshake"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 134
    iget-object v0, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_pocketmod"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    iget-object v0, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_pickanswer"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    return-void
.end method

.method private release()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    return-void
.end method

.method private updateState(Ljava/lang/String;Z)V
    .locals 3
    .parameter "typeName"
    .parameter "enable"

    .prologue
    .line 163
    iget v2, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->mCount:I

    if-lez v2, :cond_2

    .line 164
    iget-object v2, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->this$0:Landroid/motion/CompositeMotionDetector;

    #getter for: Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;
    invoke-static {v2}, Landroid/motion/CompositeMotionDetector;->access$100(Landroid/motion/CompositeMotionDetector;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/motion/MotionDetector;

    .line 165
    .local v0, detector:Landroid/motion/MotionDetector;
    invoke-virtual {v0}, Landroid/motion/MotionDetector;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    if-eqz p2, :cond_1

    .line 167
    invoke-virtual {v0}, Landroid/motion/MotionDetector;->enable()V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v0}, Landroid/motion/MotionDetector;->disable()V

    goto :goto_0

    .line 174
    .end local v0           #detector:Landroid/motion/MotionDetector;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public observeDetectors()V
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->mCount:I

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Landroid/motion/CompositeMotionDetector$MotionObserver;->observe()V

    .line 147
    :cond_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 155
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 156
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, uriString:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, typeName:Ljava/lang/String;
    iget-object v4, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    invoke-direct {p0, v0, v2}, Landroid/motion/CompositeMotionDetector$MotionObserver;->updateState(Ljava/lang/String;Z)V

    .line 159
    return-void

    :cond_0
    move v2, v3

    .line 158
    goto :goto_0
.end method

.method public releaseDetectors()V
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/motion/CompositeMotionDetector$MotionObserver;->mCount:I

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Landroid/motion/CompositeMotionDetector$MotionObserver;->release()V

    .line 153
    :cond_0
    return-void
.end method
