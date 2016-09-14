.class public final enum Lorg/threeten/bp/format/ad;
.super Ljava/lang/Enum;
.source "SignStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/format/ad;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/threeten/bp/format/ad;

.field public static final enum b:Lorg/threeten/bp/format/ad;

.field public static final enum c:Lorg/threeten/bp/format/ad;

.field public static final enum d:Lorg/threeten/bp/format/ad;

.field public static final enum e:Lorg/threeten/bp/format/ad;

.field private static final synthetic f:[Lorg/threeten/bp/format/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lorg/threeten/bp/format/ad;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ad;->a:Lorg/threeten/bp/format/ad;

    .line 60
    new-instance v0, Lorg/threeten/bp/format/ad;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v3}, Lorg/threeten/bp/format/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ad;->b:Lorg/threeten/bp/format/ad;

    .line 67
    new-instance v0, Lorg/threeten/bp/format/ad;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v4}, Lorg/threeten/bp/format/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ad;->c:Lorg/threeten/bp/format/ad;

    .line 74
    new-instance v0, Lorg/threeten/bp/format/ad;

    const-string v1, "NOT_NEGATIVE"

    invoke-direct {v0, v1, v5}, Lorg/threeten/bp/format/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ad;->d:Lorg/threeten/bp/format/ad;

    .line 83
    new-instance v0, Lorg/threeten/bp/format/ad;

    const-string v1, "EXCEEDS_PAD"

    invoke-direct {v0, v1, v6}, Lorg/threeten/bp/format/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ad;->e:Lorg/threeten/bp/format/ad;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/threeten/bp/format/ad;

    sget-object v1, Lorg/threeten/bp/format/ad;->a:Lorg/threeten/bp/format/ad;

    aput-object v1, v0, v2

    sget-object v1, Lorg/threeten/bp/format/ad;->b:Lorg/threeten/bp/format/ad;

    aput-object v1, v0, v3

    sget-object v1, Lorg/threeten/bp/format/ad;->c:Lorg/threeten/bp/format/ad;

    aput-object v1, v0, v4

    sget-object v1, Lorg/threeten/bp/format/ad;->d:Lorg/threeten/bp/format/ad;

    aput-object v1, v0, v5

    sget-object v1, Lorg/threeten/bp/format/ad;->e:Lorg/threeten/bp/format/ad;

    aput-object v1, v0, v6

    sput-object v0, Lorg/threeten/bp/format/ad;->f:[Lorg/threeten/bp/format/ad;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/format/ad;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/threeten/bp/format/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/ad;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/format/ad;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/threeten/bp/format/ad;->f:[Lorg/threeten/bp/format/ad;

    invoke-virtual {v0}, [Lorg/threeten/bp/format/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/format/ad;

    return-object v0
.end method


# virtual methods
.method final a(ZZZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p0}, Lorg/threeten/bp/format/ad;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 103
    :pswitch_0
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    .line 97
    :pswitch_1
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 100
    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
