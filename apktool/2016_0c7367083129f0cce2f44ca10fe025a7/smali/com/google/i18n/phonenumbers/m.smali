.class public final enum Lcom/google/i18n/phonenumbers/m;
.super Ljava/lang/Enum;
.source "Phonenumber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/i18n/phonenumbers/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/i18n/phonenumbers/m;

.field public static final enum b:Lcom/google/i18n/phonenumbers/m;

.field public static final enum c:Lcom/google/i18n/phonenumbers/m;

.field public static final enum d:Lcom/google/i18n/phonenumbers/m;

.field private static final synthetic e:[Lcom/google/i18n/phonenumbers/m;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/google/i18n/phonenumbers/m;

    const-string v1, "FROM_NUMBER_WITH_PLUS_SIGN"

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/m;->a:Lcom/google/i18n/phonenumbers/m;

    .line 33
    new-instance v0, Lcom/google/i18n/phonenumbers/m;

    const-string v1, "FROM_NUMBER_WITH_IDD"

    invoke-direct {v0, v1, v3}, Lcom/google/i18n/phonenumbers/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/m;->b:Lcom/google/i18n/phonenumbers/m;

    .line 34
    new-instance v0, Lcom/google/i18n/phonenumbers/m;

    const-string v1, "FROM_NUMBER_WITHOUT_PLUS_SIGN"

    invoke-direct {v0, v1, v4}, Lcom/google/i18n/phonenumbers/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/m;->c:Lcom/google/i18n/phonenumbers/m;

    .line 35
    new-instance v0, Lcom/google/i18n/phonenumbers/m;

    const-string v1, "FROM_DEFAULT_COUNTRY"

    invoke-direct {v0, v1, v5}, Lcom/google/i18n/phonenumbers/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/m;->d:Lcom/google/i18n/phonenumbers/m;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/i18n/phonenumbers/m;

    sget-object v1, Lcom/google/i18n/phonenumbers/m;->a:Lcom/google/i18n/phonenumbers/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/i18n/phonenumbers/m;->b:Lcom/google/i18n/phonenumbers/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/i18n/phonenumbers/m;->c:Lcom/google/i18n/phonenumbers/m;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/i18n/phonenumbers/m;->d:Lcom/google/i18n/phonenumbers/m;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/i18n/phonenumbers/m;->e:[Lcom/google/i18n/phonenumbers/m;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/i18n/phonenumbers/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/m;

    return-object v0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/i18n/phonenumbers/m;->e:[Lcom/google/i18n/phonenumbers/m;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/m;

    return-object v0
.end method
