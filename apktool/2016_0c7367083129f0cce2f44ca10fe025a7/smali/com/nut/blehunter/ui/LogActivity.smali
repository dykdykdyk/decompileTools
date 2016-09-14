.class public Lcom/nut/blehunter/ui/LogActivity;
.super Lcom/nut/blehunter/ui/b;
.source "LogActivity.java"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lcom/nut/blehunter/ui/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nut/blehunter/ui/a/a/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/LogActivity;->c:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/ui/LogActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LogActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/LogActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LogActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nut/blehunter/ui/LogActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/LogActivity;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/nut/blehunter/ui/LogActivity;->d:I

    return v0
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/LogActivity;)Lcom/nut/blehunter/ui/a/a/a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nut/blehunter/ui/LogActivity;->b:Lcom/nut/blehunter/ui/a/a/a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 1086
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1087
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1089
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1090
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    :goto_1
    return-object v0

    .line 1093
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1094
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LogActivity;->setContentView(I)V

    .line 1038
    iget-object v0, p0, Lcom/nut/blehunter/ui/LogActivity;->c:Ljava/util/List;

    const-string v1, "\u4f4d\u7f6e\u66f4\u65b0\u8bb0\u5f55"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    iget-object v0, p0, Lcom/nut/blehunter/ui/LogActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/LogActivity;->d:I

    .line 1042
    const v0, 0x7f0d00bd

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/LogActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 1043
    iget-object v0, p0, Lcom/nut/blehunter/ui/LogActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/eg;)V

    .line 1044
    new-instance v0, Lcom/nut/blehunter/ui/bp;

    iget-object v1, p0, Lcom/nut/blehunter/ui/LogActivity;->c:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/nut/blehunter/ui/bp;-><init>(Lcom/nut/blehunter/ui/LogActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/LogActivity;->b:Lcom/nut/blehunter/ui/a/a/a;

    .line 1050
    iget-object v0, p0, Lcom/nut/blehunter/ui/LogActivity;->b:Lcom/nut/blehunter/ui/a/a/a;

    new-instance v1, Lcom/nut/blehunter/ui/bq;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bq;-><init>(Lcom/nut/blehunter/ui/LogActivity;)V

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/a/a/a;->a(Lcom/nut/blehunter/ui/a/a/f;)V

    .line 1072
    iget-object v0, p0, Lcom/nut/blehunter/ui/LogActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/LogActivity;->b:Lcom/nut/blehunter/ui/a/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/dx;)V

    .line 34
    return-void
.end method
