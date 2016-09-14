.class public final Lcom/loc/ar;
.super Ljava/lang/Object;
.source "DynamicSDKFile.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "copy"

    iput-object v0, p0, Lcom/loc/ar;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/ar;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/loc/ar;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/ar;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/loc/ar;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/loc/ar;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/loc/aq;
    .locals 1

    new-instance v0, Lcom/loc/aq;

    invoke-direct {v0, p0}, Lcom/loc/aq;-><init>(Lcom/loc/ar;)V

    return-object v0
.end method
