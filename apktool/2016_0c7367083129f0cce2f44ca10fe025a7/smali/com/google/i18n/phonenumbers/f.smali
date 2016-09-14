.class public final enum Lcom/google/i18n/phonenumbers/f;
.super Ljava/lang/Enum;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/i18n/phonenumbers/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/i18n/phonenumbers/f;

.field public static final enum b:Lcom/google/i18n/phonenumbers/f;

.field public static final enum c:Lcom/google/i18n/phonenumbers/f;

.field public static final enum d:Lcom/google/i18n/phonenumbers/f;

.field public static final enum e:Lcom/google/i18n/phonenumbers/f;

.field private static final synthetic f:[Lcom/google/i18n/phonenumbers/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/google/i18n/phonenumbers/f;

    const-string v1, "INVALID_COUNTRY_CODE"

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/f;->a:Lcom/google/i18n/phonenumbers/f;

    .line 30
    new-instance v0, Lcom/google/i18n/phonenumbers/f;

    const-string v1, "NOT_A_NUMBER"

    invoke-direct {v0, v1, v3}, Lcom/google/i18n/phonenumbers/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/f;->b:Lcom/google/i18n/phonenumbers/f;

    .line 34
    new-instance v0, Lcom/google/i18n/phonenumbers/f;

    const-string v1, "TOO_SHORT_AFTER_IDD"

    invoke-direct {v0, v1, v4}, Lcom/google/i18n/phonenumbers/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/f;->c:Lcom/google/i18n/phonenumbers/f;

    .line 37
    new-instance v0, Lcom/google/i18n/phonenumbers/f;

    const-string v1, "TOO_SHORT_NSN"

    invoke-direct {v0, v1, v5}, Lcom/google/i18n/phonenumbers/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/f;->d:Lcom/google/i18n/phonenumbers/f;

    .line 39
    new-instance v0, Lcom/google/i18n/phonenumbers/f;

    const-string v1, "TOO_LONG"

    invoke-direct {v0, v1, v6}, Lcom/google/i18n/phonenumbers/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/f;->e:Lcom/google/i18n/phonenumbers/f;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/i18n/phonenumbers/f;

    sget-object v1, Lcom/google/i18n/phonenumbers/f;->a:Lcom/google/i18n/phonenumbers/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/i18n/phonenumbers/f;->b:Lcom/google/i18n/phonenumbers/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/i18n/phonenumbers/f;->c:Lcom/google/i18n/phonenumbers/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/i18n/phonenumbers/f;->d:Lcom/google/i18n/phonenumbers/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/i18n/phonenumbers/f;->e:Lcom/google/i18n/phonenumbers/f;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/i18n/phonenumbers/f;->f:[Lcom/google/i18n/phonenumbers/f;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/f;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/i18n/phonenumbers/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/f;

    return-object v0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/f;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/i18n/phonenumbers/f;->f:[Lcom/google/i18n/phonenumbers/f;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/f;

    return-object v0
.end method
