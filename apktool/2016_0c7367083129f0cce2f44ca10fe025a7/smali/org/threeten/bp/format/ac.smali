.class public final enum Lorg/threeten/bp/format/ac;
.super Ljava/lang/Enum;
.source "ResolverStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/format/ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/threeten/bp/format/ac;

.field public static final enum b:Lorg/threeten/bp/format/ac;

.field public static final enum c:Lorg/threeten/bp/format/ac;

.field private static final synthetic d:[Lorg/threeten/bp/format/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lorg/threeten/bp/format/ac;

    const-string v1, "STRICT"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    .line 71
    new-instance v0, Lorg/threeten/bp/format/ac;

    const-string v1, "SMART"

    invoke-direct {v0, v1, v3}, Lorg/threeten/bp/format/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ac;->b:Lorg/threeten/bp/format/ac;

    .line 82
    new-instance v0, Lorg/threeten/bp/format/ac;

    const-string v1, "LENIENT"

    invoke-direct {v0, v1, v4}, Lorg/threeten/bp/format/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/threeten/bp/format/ac;

    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    aput-object v1, v0, v2

    sget-object v1, Lorg/threeten/bp/format/ac;->b:Lorg/threeten/bp/format/ac;

    aput-object v1, v0, v3

    sget-object v1, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    aput-object v1, v0, v4

    sput-object v0, Lorg/threeten/bp/format/ac;->d:[Lorg/threeten/bp/format/ac;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/format/ac;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/threeten/bp/format/ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/ac;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/format/ac;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/threeten/bp/format/ac;->d:[Lorg/threeten/bp/format/ac;

    invoke-virtual {v0}, [Lorg/threeten/bp/format/ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/format/ac;

    return-object v0
.end method
