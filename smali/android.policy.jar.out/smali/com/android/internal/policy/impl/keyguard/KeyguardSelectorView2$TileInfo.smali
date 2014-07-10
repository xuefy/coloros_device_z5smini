.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;
.super Ljava/lang/Object;
.source "KeyguardSelectorView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileInfo"
.end annotation


# instance fields
.field drawablePath:Ljava/lang/String;

.field left:I

.field top:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "resPath"
    .parameter "l"
    .parameter "t"

    .prologue
    .line 464
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;->drawablePath:Ljava/lang/String;

    .line 466
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;->left:I

    .line 467
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;->top:I

    .line 468
    return-void
.end method
