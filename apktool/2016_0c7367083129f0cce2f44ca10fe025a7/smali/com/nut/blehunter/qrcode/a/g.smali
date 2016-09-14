.class public final enum Lcom/nut/blehunter/qrcode/a/g;
.super Ljava/lang/Enum;
.source "FrontLightMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nut/blehunter/qrcode/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nut/blehunter/qrcode/a/g;

.field public static final enum b:Lcom/nut/blehunter/qrcode/a/g;

.field public static final enum c:Lcom/nut/blehunter/qrcode/a/g;

.field private static final synthetic d:[Lcom/nut/blehunter/qrcode/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/nut/blehunter/qrcode/a/g;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/nut/blehunter/qrcode/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nut/blehunter/qrcode/a/g;->a:Lcom/nut/blehunter/qrcode/a/g;

    .line 29
    new-instance v0, Lcom/nut/blehunter/qrcode/a/g;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v3}, Lcom/nut/blehunter/qrcode/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nut/blehunter/qrcode/a/g;->b:Lcom/nut/blehunter/qrcode/a/g;

    .line 31
    new-instance v0, Lcom/nut/blehunter/qrcode/a/g;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4}, Lcom/nut/blehunter/qrcode/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nut/blehunter/qrcode/a/g;->c:Lcom/nut/blehunter/qrcode/a/g;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nut/blehunter/qrcode/a/g;

    sget-object v1, Lcom/nut/blehunter/qrcode/a/g;->a:Lcom/nut/blehunter/qrcode/a/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nut/blehunter/qrcode/a/g;->b:Lcom/nut/blehunter/qrcode/a/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nut/blehunter/qrcode/a/g;->c:Lcom/nut/blehunter/qrcode/a/g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nut/blehunter/qrcode/a/g;->d:[Lcom/nut/blehunter/qrcode/a/g;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lcom/nut/blehunter/qrcode/a/g;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/nut/blehunter/qrcode/a/g;->c:Lcom/nut/blehunter/qrcode/a/g;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/a/g;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    if-nez v0, :cond_0

    sget-object v0, Lcom/nut/blehunter/qrcode/a/g;->c:Lcom/nut/blehunter/qrcode/a/g;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/nut/blehunter/qrcode/a/g;->valueOf(Ljava/lang/String;)Lcom/nut/blehunter/qrcode/a/g;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nut/blehunter/qrcode/a/g;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/nut/blehunter/qrcode/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/qrcode/a/g;

    return-object v0
.end method

.method public static values()[Lcom/nut/blehunter/qrcode/a/g;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nut/blehunter/qrcode/a/g;->d:[Lcom/nut/blehunter/qrcode/a/g;

    invoke-virtual {v0}, [Lcom/nut/blehunter/qrcode/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nut/blehunter/qrcode/a/g;

    return-object v0
.end method
