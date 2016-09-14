.class public final enum Lorg/android/agoo/b/g;
.super Ljava/lang/Enum;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/android/agoo/b/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/android/agoo/b/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum b:Lorg/android/agoo/b/g;

.field public static final enum c:Lorg/android/agoo/b/g;

.field public static final enum d:Lorg/android/agoo/b/g;

.field public static final enum e:Lorg/android/agoo/b/g;

.field private static final synthetic g:[Lorg/android/agoo/b/g;


# instance fields
.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lorg/android/agoo/b/g;

    const-string v1, "TEST_SINGLE"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/android/agoo/b/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/b/g;->a:Lorg/android/agoo/b/g;

    .line 6
    new-instance v0, Lorg/android/agoo/b/g;

    const-string v1, "TEST"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/android/agoo/b/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/b/g;->b:Lorg/android/agoo/b/g;

    .line 7
    new-instance v0, Lorg/android/agoo/b/g;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v5, v3}, Lorg/android/agoo/b/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/b/g;->c:Lorg/android/agoo/b/g;

    .line 8
    new-instance v0, Lorg/android/agoo/b/g;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v6, v4}, Lorg/android/agoo/b/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/b/g;->d:Lorg/android/agoo/b/g;

    .line 9
    new-instance v0, Lorg/android/agoo/b/g;

    const-string v1, "TAOBAO"

    invoke-direct {v0, v1, v7, v5}, Lorg/android/agoo/b/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/b/g;->e:Lorg/android/agoo/b/g;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/android/agoo/b/g;

    sget-object v1, Lorg/android/agoo/b/g;->a:Lorg/android/agoo/b/g;

    aput-object v1, v0, v3

    sget-object v1, Lorg/android/agoo/b/g;->b:Lorg/android/agoo/b/g;

    aput-object v1, v0, v4

    sget-object v1, Lorg/android/agoo/b/g;->c:Lorg/android/agoo/b/g;

    aput-object v1, v0, v5

    sget-object v1, Lorg/android/agoo/b/g;->d:Lorg/android/agoo/b/g;

    aput-object v1, v0, v6

    sget-object v1, Lorg/android/agoo/b/g;->e:Lorg/android/agoo/b/g;

    aput-object v1, v0, v7

    sput-object v0, Lorg/android/agoo/b/g;->g:[Lorg/android/agoo/b/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lorg/android/agoo/b/g;->f:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/agoo/b/g;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lorg/android/agoo/b/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/b/g;

    return-object v0
.end method

.method public static values()[Lorg/android/agoo/b/g;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lorg/android/agoo/b/g;->g:[Lorg/android/agoo/b/g;

    invoke-virtual {v0}, [Lorg/android/agoo/b/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/agoo/b/g;

    return-object v0
.end method
