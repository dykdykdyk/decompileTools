.class public final enum Lcom/twitter/sdk/android/core/services/a/b;
.super Ljava/lang/Enum;
.source "Geocode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/sdk/android/core/services/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/twitter/sdk/android/core/services/a/b;

.field public static final enum b:Lcom/twitter/sdk/android/core/services/a/b;

.field private static final synthetic d:[Lcom/twitter/sdk/android/core/services/a/b;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/twitter/sdk/android/core/services/a/b;

    const-string v1, "MILES"

    const-string v2, "mi"

    invoke-direct {v0, v1, v3, v2}, Lcom/twitter/sdk/android/core/services/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/sdk/android/core/services/a/b;->a:Lcom/twitter/sdk/android/core/services/a/b;

    .line 18
    new-instance v0, Lcom/twitter/sdk/android/core/services/a/b;

    const-string v1, "KILOMETERS"

    const-string v2, "km"

    invoke-direct {v0, v1, v4, v2}, Lcom/twitter/sdk/android/core/services/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/sdk/android/core/services/a/b;->b:Lcom/twitter/sdk/android/core/services/a/b;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/twitter/sdk/android/core/services/a/b;

    sget-object v1, Lcom/twitter/sdk/android/core/services/a/b;->a:Lcom/twitter/sdk/android/core/services/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/sdk/android/core/services/a/b;->b:Lcom/twitter/sdk/android/core/services/a/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/twitter/sdk/android/core/services/a/b;->d:[Lcom/twitter/sdk/android/core/services/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/twitter/sdk/android/core/services/a/b;->c:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/sdk/android/core/services/a/b;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/twitter/sdk/android/core/services/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/a/b;

    return-object v0
.end method

.method public static values()[Lcom/twitter/sdk/android/core/services/a/b;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/twitter/sdk/android/core/services/a/b;->d:[Lcom/twitter/sdk/android/core/services/a/b;

    invoke-virtual {v0}, [Lcom/twitter/sdk/android/core/services/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/sdk/android/core/services/a/b;

    return-object v0
.end method
