.class public final enum Lorg/threeten/bp/format/ah;
.super Ljava/lang/Enum;
.source "TextStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/format/ah;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/threeten/bp/format/ah;

.field public static final enum b:Lorg/threeten/bp/format/ah;

.field public static final enum c:Lorg/threeten/bp/format/ah;

.field public static final enum d:Lorg/threeten/bp/format/ah;

.field public static final enum e:Lorg/threeten/bp/format/ah;

.field public static final enum f:Lorg/threeten/bp/format/ah;

.field private static final synthetic g:[Lorg/threeten/bp/format/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    new-instance v0, Lorg/threeten/bp/format/ah;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v3}, Lorg/threeten/bp/format/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ah;->a:Lorg/threeten/bp/format/ah;

    .line 66
    new-instance v0, Lorg/threeten/bp/format/ah;

    const-string v1, "FULL_STANDALONE"

    invoke-direct {v0, v1, v4}, Lorg/threeten/bp/format/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ah;->b:Lorg/threeten/bp/format/ah;

    .line 71
    new-instance v0, Lorg/threeten/bp/format/ah;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v5}, Lorg/threeten/bp/format/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ah;->c:Lorg/threeten/bp/format/ah;

    .line 76
    new-instance v0, Lorg/threeten/bp/format/ah;

    const-string v1, "SHORT_STANDALONE"

    invoke-direct {v0, v1, v6}, Lorg/threeten/bp/format/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ah;->d:Lorg/threeten/bp/format/ah;

    .line 81
    new-instance v0, Lorg/threeten/bp/format/ah;

    const-string v1, "NARROW"

    invoke-direct {v0, v1, v7}, Lorg/threeten/bp/format/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ah;->e:Lorg/threeten/bp/format/ah;

    .line 86
    new-instance v0, Lorg/threeten/bp/format/ah;

    const-string v1, "NARROW_STANDALONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ah;->f:Lorg/threeten/bp/format/ah;

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/threeten/bp/format/ah;

    sget-object v1, Lorg/threeten/bp/format/ah;->a:Lorg/threeten/bp/format/ah;

    aput-object v1, v0, v3

    sget-object v1, Lorg/threeten/bp/format/ah;->b:Lorg/threeten/bp/format/ah;

    aput-object v1, v0, v4

    sget-object v1, Lorg/threeten/bp/format/ah;->c:Lorg/threeten/bp/format/ah;

    aput-object v1, v0, v5

    sget-object v1, Lorg/threeten/bp/format/ah;->d:Lorg/threeten/bp/format/ah;

    aput-object v1, v0, v6

    sget-object v1, Lorg/threeten/bp/format/ah;->e:Lorg/threeten/bp/format/ah;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/threeten/bp/format/ah;->f:Lorg/threeten/bp/format/ah;

    aput-object v2, v0, v1

    sput-object v0, Lorg/threeten/bp/format/ah;->g:[Lorg/threeten/bp/format/ah;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/format/ah;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/threeten/bp/format/ah;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/ah;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/format/ah;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/threeten/bp/format/ah;->g:[Lorg/threeten/bp/format/ah;

    invoke-virtual {v0}, [Lorg/threeten/bp/format/ah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/format/ah;

    return-object v0
.end method
