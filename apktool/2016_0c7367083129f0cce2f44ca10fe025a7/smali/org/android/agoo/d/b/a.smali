.class public final enum Lorg/android/agoo/d/b/a;
.super Ljava/lang/Enum;
.source "AndroidEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/android/agoo/d/b/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/android/agoo/d/b/a;

.field private static final synthetic c:[Lorg/android/agoo/d/b/a;


# instance fields
.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4
    new-instance v0, Lorg/android/agoo/d/b/a;

    const-string v1, "NET_CHANGED"

    invoke-direct {v0, v1}, Lorg/android/agoo/d/b/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/android/agoo/d/b/a;->a:Lorg/android/agoo/d/b/a;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/android/agoo/d/b/a;

    const/4 v1, 0x0

    sget-object v2, Lorg/android/agoo/d/b/a;->a:Lorg/android/agoo/d/b/a;

    aput-object v2, v0, v1

    sput-object v0, Lorg/android/agoo/d/b/a;->c:[Lorg/android/agoo/d/b/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    const/4 v0, 0x1

    iput v0, p0, Lorg/android/agoo/d/b/a;->b:I

    .line 9
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/agoo/d/b/a;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lorg/android/agoo/d/b/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/d/b/a;

    return-object v0
.end method

.method public static values()[Lorg/android/agoo/d/b/a;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lorg/android/agoo/d/b/a;->c:[Lorg/android/agoo/d/b/a;

    invoke-virtual {v0}, [Lorg/android/agoo/d/b/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/agoo/d/b/a;

    return-object v0
.end method
