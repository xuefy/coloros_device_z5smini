.class final Landroid/app/NubiaThemeHelper$UnitEntry;
.super Ljava/lang/Object;
.source "NubiaThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NubiaThemeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnitEntry"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field scale:F

.field type:I

.field unit:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIF)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "unit"
    .parameter "scale"

    .prologue
    .line 190
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->name:Ljava/lang/String;

    .line 192
    iput p2, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->type:I

    .line 193
    iput p3, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->unit:I

    .line 194
    iput p4, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->scale:F

    .line 195
    return-void
.end method
