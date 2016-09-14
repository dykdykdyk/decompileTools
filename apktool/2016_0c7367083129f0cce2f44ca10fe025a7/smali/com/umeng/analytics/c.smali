.class public final enum Lcom/umeng/analytics/c;
.super Ljava/lang/Enum;
.source "MobclickAgent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/analytics/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/c;

.field public static final enum b:Lcom/umeng/analytics/c;

.field public static final enum c:Lcom/umeng/analytics/c;

.field public static final enum d:Lcom/umeng/analytics/c;

.field private static final synthetic f:[Lcom/umeng/analytics/c;


# instance fields
.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 452
    new-instance v0, Lcom/umeng/analytics/c;

    const-string v1, "E_UM_NORMAL"

    invoke-direct {v0, v1, v3, v3}, Lcom/umeng/analytics/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/c;

    new-instance v0, Lcom/umeng/analytics/c;

    const-string v1, "E_UM_GAME"

    invoke-direct {v0, v1, v4, v4}, Lcom/umeng/analytics/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/c;->b:Lcom/umeng/analytics/c;

    new-instance v0, Lcom/umeng/analytics/c;

    const-string v1, "E_UM_ANALYTICS_OEM"

    const/16 v2, 0xe0

    invoke-direct {v0, v1, v5, v2}, Lcom/umeng/analytics/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/c;->c:Lcom/umeng/analytics/c;

    new-instance v0, Lcom/umeng/analytics/c;

    const-string v1, "E_UM_GAME_OEM"

    const/16 v2, 0xe1

    invoke-direct {v0, v1, v6, v2}, Lcom/umeng/analytics/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/c;->d:Lcom/umeng/analytics/c;

    .line 451
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/umeng/analytics/c;

    sget-object v1, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/analytics/c;->b:Lcom/umeng/analytics/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/analytics/c;->c:Lcom/umeng/analytics/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/analytics/c;->d:Lcom/umeng/analytics/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/umeng/analytics/c;->f:[Lcom/umeng/analytics/c;

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
    .line 456
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 457
    iput p3, p0, Lcom/umeng/analytics/c;->e:I

    .line 458
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/c;
    .locals 1

    .prologue
    .line 451
    const-class v0, Lcom/umeng/analytics/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/c;

    return-object v0
.end method

.method public static values()[Lcom/umeng/analytics/c;
    .locals 1

    .prologue
    .line 451
    sget-object v0, Lcom/umeng/analytics/c;->f:[Lcom/umeng/analytics/c;

    invoke-virtual {v0}, [Lcom/umeng/analytics/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/c;

    return-object v0
.end method
