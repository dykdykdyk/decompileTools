.class public final enum Lorg/android/agoo/d/b/i;
.super Ljava/lang/Enum;
.source "ChannelType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/android/agoo/d/b/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/android/agoo/d/b/i;

.field public static final enum b:Lorg/android/agoo/d/b/i;

.field private static final synthetic e:[Lorg/android/agoo/d/b/i;


# instance fields
.field c:I

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lorg/android/agoo/d/b/i;

    const-string v1, "CHUNKED"

    const-string v2, "chunked"

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/android/agoo/d/b/i;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/android/agoo/d/b/i;->a:Lorg/android/agoo/d/b/i;

    new-instance v0, Lorg/android/agoo/d/b/i;

    const-string v1, "SPDY"

    const-string v2, "spdy"

    invoke-direct {v0, v1, v4, v4, v2}, Lorg/android/agoo/d/b/i;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/android/agoo/d/b/i;

    sget-object v1, Lorg/android/agoo/d/b/i;->a:Lorg/android/agoo/d/b/i;

    aput-object v1, v0, v3

    sget-object v1, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    aput-object v1, v0, v4

    sput-object v0, Lorg/android/agoo/d/b/i;->e:[Lorg/android/agoo/d/b/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lorg/android/agoo/d/b/i;->c:I

    .line 10
    iput-object p4, p0, Lorg/android/agoo/d/b/i;->d:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static a(I)Lorg/android/agoo/d/b/i;
    .locals 1

    .prologue
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 28
    sget-object v0, Lorg/android/agoo/d/b/i;->a:Lorg/android/agoo/d/b/i;

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    sget-object v0, Lorg/android/agoo/d/b/i;->a:Lorg/android/agoo/d/b/i;

    goto :goto_0

    .line 26
    :pswitch_1
    sget-object v0, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/agoo/d/b/i;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lorg/android/agoo/d/b/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/d/b/i;

    return-object v0
.end method

.method public static values()[Lorg/android/agoo/d/b/i;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lorg/android/agoo/d/b/i;->e:[Lorg/android/agoo/d/b/i;

    invoke-virtual {v0}, [Lorg/android/agoo/d/b/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/agoo/d/b/i;

    return-object v0
.end method
