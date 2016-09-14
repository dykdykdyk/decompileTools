.class public final enum Lorg/android/agoo/d/b/h;
.super Ljava/lang/Enum;
.source "ChannelState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/android/agoo/d/b/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/android/agoo/d/b/h;

.field public static final enum b:Lorg/android/agoo/d/b/h;

.field public static final enum c:Lorg/android/agoo/d/b/h;

.field public static final enum d:Lorg/android/agoo/d/b/h;

.field private static final synthetic e:[Lorg/android/agoo/d/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lorg/android/agoo/d/b/h;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v2}, Lorg/android/agoo/d/b/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/d/b/h;->a:Lorg/android/agoo/d/b/h;

    new-instance v0, Lorg/android/agoo/d/b/h;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lorg/android/agoo/d/b/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    new-instance v0, Lorg/android/agoo/d/b/h;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v4}, Lorg/android/agoo/d/b/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/d/b/h;->c:Lorg/android/agoo/d/b/h;

    new-instance v0, Lorg/android/agoo/d/b/h;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v5}, Lorg/android/agoo/d/b/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/d/b/h;->d:Lorg/android/agoo/d/b/h;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/android/agoo/d/b/h;

    sget-object v1, Lorg/android/agoo/d/b/h;->a:Lorg/android/agoo/d/b/h;

    aput-object v1, v0, v2

    sget-object v1, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    aput-object v1, v0, v3

    sget-object v1, Lorg/android/agoo/d/b/h;->c:Lorg/android/agoo/d/b/h;

    aput-object v1, v0, v4

    sget-object v1, Lorg/android/agoo/d/b/h;->d:Lorg/android/agoo/d/b/h;

    aput-object v1, v0, v5

    sput-object v0, Lorg/android/agoo/d/b/h;->e:[Lorg/android/agoo/d/b/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/agoo/d/b/h;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lorg/android/agoo/d/b/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/d/b/h;

    return-object v0
.end method

.method public static values()[Lorg/android/agoo/d/b/h;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lorg/android/agoo/d/b/h;->e:[Lorg/android/agoo/d/b/h;

    invoke-virtual {v0}, [Lorg/android/agoo/d/b/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/agoo/d/b/h;

    return-object v0
.end method
