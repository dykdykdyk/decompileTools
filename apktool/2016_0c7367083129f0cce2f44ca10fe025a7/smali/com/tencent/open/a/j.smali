.class public final Lcom/tencent/open/a/j;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Lcom/tencent/open/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/tencent/open/a/j;

    invoke-direct {v0}, Lcom/tencent/open/a/j;-><init>()V

    sput-object v0, Lcom/tencent/open/a/j;->a:Lcom/tencent/open/a/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sparse-switch p0, :sswitch_data_0

    .line 78
    const-string v0, "-"

    :goto_0
    return-object v0

    .line 66
    :sswitch_0
    const-string v0, "D"

    goto :goto_0

    .line 68
    :sswitch_1
    const-string v0, "I"

    goto :goto_0

    .line 70
    :sswitch_2
    const-string v0, "W"

    goto :goto_0

    .line 72
    :sswitch_3
    const-string v0, "E"

    goto :goto_0

    .line 74
    :sswitch_4
    const-string v0, "V"

    goto :goto_0

    .line 76
    :sswitch_5
    const-string v0, "A"

    goto :goto_0

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_5
    .end sparse-switch
.end method
