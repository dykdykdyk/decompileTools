.class public final enum Lcom/google/zxing/n;
.super Ljava/lang/Enum;
.source "ResultMetadataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/n;

.field public static final enum b:Lcom/google/zxing/n;

.field public static final enum c:Lcom/google/zxing/n;

.field public static final enum d:Lcom/google/zxing/n;

.field public static final enum e:Lcom/google/zxing/n;

.field public static final enum f:Lcom/google/zxing/n;

.field public static final enum g:Lcom/google/zxing/n;

.field public static final enum h:Lcom/google/zxing/n;

.field public static final enum i:Lcom/google/zxing/n;

.field public static final enum j:Lcom/google/zxing/n;

.field public static final enum k:Lcom/google/zxing/n;

.field private static final synthetic l:[Lcom/google/zxing/n;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/google/zxing/n;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/n;->a:Lcom/google/zxing/n;

    .line 39
    new-instance v0, Lcom/google/zxing/n;

    const-string v1, "ORIENTATION"

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/n;->b:Lcom/google/zxing/n;

    .line 50
    new-instance v0, Lcom/google/zxing/n;

    const-string v1, "BYTE_SEGMENTS"

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/n;->c:Lcom/google/zxing/n;

    .line 56
    new-instance v0, Lcom/google/zxing/n;

    const-string v1, "ERROR_CORRECTION_LEVEL"

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/n;->d:Lcom/google/zxing/n;

    .line 61
    new-instance v0, Lcom/google/zxing/n;

    const-string v1, "ISSUE_NUMBER"

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/n;->e:Lcom/google/zxing/n;

    .line 67
    new-instance v0, Lcom/google/zxing/n;

    const-string v1, "SUGGESTED_PRICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/n;->f:Lcom/google/zxing/n;

    .line 73
    new-instance v0, Lcom/google/zxing/n;

    const-string v1, "POSSIBLE_COUNTRY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/n;->g:Lcom/google/zxing/n;

    .line 78
    new-instance v0, Lcom/google/zxing/n;

    const-string v1, "UPC_EAN_EXTENSION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/n;->h:Lcom/google/zxing/n;

    .line 83
    new-instance v0, Lcom/google/zxing/n;

    const-string v1, "PDF417_EXTRA_METADATA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/n;->i:Lcom/google/zxing/n;

    .line 89
    new-instance v0, Lcom/google/zxing/n;

    const-string v1, "STRUCTURED_APPEND_SEQUENCE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/n;->j:Lcom/google/zxing/n;

    .line 95
    new-instance v0, Lcom/google/zxing/n;

    const-string v1, "STRUCTURED_APPEND_PARITY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/n;->k:Lcom/google/zxing/n;

    .line 25
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/zxing/n;

    sget-object v1, Lcom/google/zxing/n;->a:Lcom/google/zxing/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/n;->b:Lcom/google/zxing/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/n;->c:Lcom/google/zxing/n;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/n;->d:Lcom/google/zxing/n;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/n;->e:Lcom/google/zxing/n;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/zxing/n;->f:Lcom/google/zxing/n;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/zxing/n;->g:Lcom/google/zxing/n;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/zxing/n;->h:Lcom/google/zxing/n;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/zxing/n;->i:Lcom/google/zxing/n;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/zxing/n;->j:Lcom/google/zxing/n;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/zxing/n;->k:Lcom/google/zxing/n;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/n;->l:[Lcom/google/zxing/n;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/n;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/zxing/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/n;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/n;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/zxing/n;->l:[Lcom/google/zxing/n;

    invoke-virtual {v0}, [Lcom/google/zxing/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/n;

    return-object v0
.end method
