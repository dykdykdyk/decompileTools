.class public final enum Lorg/android/agoo/d/b/c;
.super Ljava/lang/Enum;
.source "ChannelError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/android/agoo/d/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/android/agoo/d/b/c;

.field public static final enum b:Lorg/android/agoo/d/b/c;

.field public static final enum c:Lorg/android/agoo/d/b/c;

.field public static final enum d:Lorg/android/agoo/d/b/c;

.field public static final enum e:Lorg/android/agoo/d/b/c;

.field public static final enum f:Lorg/android/agoo/d/b/c;

.field public static final enum g:Lorg/android/agoo/d/b/c;

.field public static final enum h:Lorg/android/agoo/d/b/c;

.field private static final synthetic i:[Lorg/android/agoo/d/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v0, Lorg/android/agoo/d/b/c;

    const-string v1, "UNNECESSARY"

    invoke-direct {v0, v1, v3}, Lorg/android/agoo/d/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/d/b/c;->a:Lorg/android/agoo/d/b/c;

    new-instance v0, Lorg/android/agoo/d/b/c;

    const-string v1, "RECONNECT"

    invoke-direct {v0, v1, v4}, Lorg/android/agoo/d/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/d/b/c;->b:Lorg/android/agoo/d/b/c;

    new-instance v0, Lorg/android/agoo/d/b/c;

    const-string v1, "RECONNECT_CLEAR_X_TOKEN"

    invoke-direct {v0, v1, v5}, Lorg/android/agoo/d/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/d/b/c;->c:Lorg/android/agoo/d/b/c;

    new-instance v0, Lorg/android/agoo/d/b/c;

    const-string v1, "RECONNECT_REFRESH_HOST"

    invoke-direct {v0, v1, v6}, Lorg/android/agoo/d/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/d/b/c;->d:Lorg/android/agoo/d/b/c;

    new-instance v0, Lorg/android/agoo/d/b/c;

    const-string v1, "SPDY_RELOAD"

    invoke-direct {v0, v1, v7}, Lorg/android/agoo/d/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/d/b/c;->e:Lorg/android/agoo/d/b/c;

    new-instance v0, Lorg/android/agoo/d/b/c;

    const-string v1, "FORCE_CHUNKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/android/agoo/d/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/d/b/c;->f:Lorg/android/agoo/d/b/c;

    new-instance v0, Lorg/android/agoo/d/b/c;

    const-string v1, "PAUSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/android/agoo/d/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/d/b/c;->g:Lorg/android/agoo/d/b/c;

    new-instance v0, Lorg/android/agoo/d/b/c;

    const-string v1, "DISABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/android/agoo/d/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/d/b/c;->h:Lorg/android/agoo/d/b/c;

    .line 103
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/android/agoo/d/b/c;

    sget-object v1, Lorg/android/agoo/d/b/c;->a:Lorg/android/agoo/d/b/c;

    aput-object v1, v0, v3

    sget-object v1, Lorg/android/agoo/d/b/c;->b:Lorg/android/agoo/d/b/c;

    aput-object v1, v0, v4

    sget-object v1, Lorg/android/agoo/d/b/c;->c:Lorg/android/agoo/d/b/c;

    aput-object v1, v0, v5

    sget-object v1, Lorg/android/agoo/d/b/c;->d:Lorg/android/agoo/d/b/c;

    aput-object v1, v0, v6

    sget-object v1, Lorg/android/agoo/d/b/c;->e:Lorg/android/agoo/d/b/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/android/agoo/d/b/c;->f:Lorg/android/agoo/d/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/android/agoo/d/b/c;->g:Lorg/android/agoo/d/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/android/agoo/d/b/c;->h:Lorg/android/agoo/d/b/c;

    aput-object v2, v0, v1

    sput-object v0, Lorg/android/agoo/d/b/c;->i:[Lorg/android/agoo/d/b/c;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/agoo/d/b/c;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lorg/android/agoo/d/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/d/b/c;

    return-object v0
.end method

.method public static values()[Lorg/android/agoo/d/b/c;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lorg/android/agoo/d/b/c;->i:[Lorg/android/agoo/d/b/c;

    invoke-virtual {v0}, [Lorg/android/agoo/d/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/agoo/d/b/c;

    return-object v0
.end method
