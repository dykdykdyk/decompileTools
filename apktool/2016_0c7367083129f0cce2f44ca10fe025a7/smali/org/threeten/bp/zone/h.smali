.class public final enum Lorg/threeten/bp/zone/h;
.super Ljava/lang/Enum;
.source "ZoneOffsetTransitionRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/zone/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/threeten/bp/zone/h;

.field public static final enum b:Lorg/threeten/bp/zone/h;

.field public static final enum c:Lorg/threeten/bp/zone/h;

.field private static final synthetic d:[Lorg/threeten/bp/zone/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 505
    new-instance v0, Lorg/threeten/bp/zone/h;

    const-string v1, "UTC"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/zone/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/zone/h;->a:Lorg/threeten/bp/zone/h;

    .line 507
    new-instance v0, Lorg/threeten/bp/zone/h;

    const-string v1, "WALL"

    invoke-direct {v0, v1, v3}, Lorg/threeten/bp/zone/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/zone/h;->b:Lorg/threeten/bp/zone/h;

    .line 509
    new-instance v0, Lorg/threeten/bp/zone/h;

    const-string v1, "STANDARD"

    invoke-direct {v0, v1, v4}, Lorg/threeten/bp/zone/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/zone/h;->c:Lorg/threeten/bp/zone/h;

    .line 503
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/threeten/bp/zone/h;

    sget-object v1, Lorg/threeten/bp/zone/h;->a:Lorg/threeten/bp/zone/h;

    aput-object v1, v0, v2

    sget-object v1, Lorg/threeten/bp/zone/h;->b:Lorg/threeten/bp/zone/h;

    aput-object v1, v0, v3

    sget-object v1, Lorg/threeten/bp/zone/h;->c:Lorg/threeten/bp/zone/h;

    aput-object v1, v0, v4

    sput-object v0, Lorg/threeten/bp/zone/h;->d:[Lorg/threeten/bp/zone/h;

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
    .line 503
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/zone/h;
    .locals 1

    .prologue
    .line 503
    const-class v0, Lorg/threeten/bp/zone/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/zone/h;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/zone/h;
    .locals 1

    .prologue
    .line 503
    sget-object v0, Lorg/threeten/bp/zone/h;->d:[Lorg/threeten/bp/zone/h;

    invoke-virtual {v0}, [Lorg/threeten/bp/zone/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/zone/h;

    return-object v0
.end method
