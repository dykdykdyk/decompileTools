.class public final enum Lokhttp3/internal/framed/y;
.super Ljava/lang/Enum;
.source "HeadersMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/internal/framed/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lokhttp3/internal/framed/y;

.field public static final enum b:Lokhttp3/internal/framed/y;

.field public static final enum c:Lokhttp3/internal/framed/y;

.field public static final enum d:Lokhttp3/internal/framed/y;

.field private static final synthetic e:[Lokhttp3/internal/framed/y;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lokhttp3/internal/framed/y;

    const-string v1, "SPDY_SYN_STREAM"

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/framed/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/internal/framed/y;->a:Lokhttp3/internal/framed/y;

    .line 20
    new-instance v0, Lokhttp3/internal/framed/y;

    const-string v1, "SPDY_REPLY"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/internal/framed/y;->b:Lokhttp3/internal/framed/y;

    .line 21
    new-instance v0, Lokhttp3/internal/framed/y;

    const-string v1, "SPDY_HEADERS"

    invoke-direct {v0, v1, v4}, Lokhttp3/internal/framed/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/internal/framed/y;->c:Lokhttp3/internal/framed/y;

    .line 22
    new-instance v0, Lokhttp3/internal/framed/y;

    const-string v1, "HTTP_20_HEADERS"

    invoke-direct {v0, v1, v5}, Lokhttp3/internal/framed/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/internal/framed/y;->d:Lokhttp3/internal/framed/y;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lokhttp3/internal/framed/y;

    sget-object v1, Lokhttp3/internal/framed/y;->a:Lokhttp3/internal/framed/y;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/y;->b:Lokhttp3/internal/framed/y;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/framed/y;->c:Lokhttp3/internal/framed/y;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/framed/y;->d:Lokhttp3/internal/framed/y;

    aput-object v1, v0, v5

    sput-object v0, Lokhttp3/internal/framed/y;->e:[Lokhttp3/internal/framed/y;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/internal/framed/y;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lokhttp3/internal/framed/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/y;

    return-object v0
.end method

.method public static values()[Lokhttp3/internal/framed/y;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lokhttp3/internal/framed/y;->e:[Lokhttp3/internal/framed/y;

    invoke-virtual {v0}, [Lokhttp3/internal/framed/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/y;

    return-object v0
.end method
