.class public Lcom/nut/blehunter/ui/ConnectRecordActivity;
.super Lcom/nut/blehunter/ui/b;
.source "ConnectRecordActivity.java"


# instance fields
.field protected a:Lcom/nut/blehunter/ui/a/e;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/support/v7/widget/eg;

.field private d:Lcom/nut/blehunter/entity/Nut;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ConnectRecordActivity;)Lcom/nut/blehunter/entity/Nut;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->d:Lcom/nut/blehunter/entity/Nut;

    return-object v0
.end method

.method private c(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 7231
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 7232
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 7233
    new-array v0, v0, [B

    .line 7234
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 7235
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->d:Lcom/nut/blehunter/entity/Nut;

    .line 40
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f06025b

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->a(I)V

    .line 43
    const v0, 0x7f0d00a2

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->b:Landroid/support/v7/widget/RecyclerView;

    .line 44
    iget-object v0, p0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/nut/blehunter/ui/widget/c;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/widget/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ef;)V

    .line 46
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->c:Landroid/support/v7/widget/eg;

    .line 47
    iget-object v0, p0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->c:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/eg;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_connect_record"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 49
    new-instance v1, Lcom/nut/blehunter/ui/a/e;

    invoke-direct {v1, v0}, Lcom/nut/blehunter/ui/a/e;-><init>([B)V

    iput-object v1, p0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->a:Lcom/nut/blehunter/ui/a/e;

    .line 50
    iget-object v0, p0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->a:Lcom/nut/blehunter/ui/a/e;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/dx;)V

    .line 7065
    new-instance v0, Lcom/nut/blehunter/ui/aa;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/aa;-><init>(Lcom/nut/blehunter/ui/ConnectRecordActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0249

    if-ne v0, v1, :cond_2

    .line 142
    iget-object v0, p0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->a:Lcom/nut/blehunter/ui/a/e;

    .line 8141
    iget-object v1, v0, Lcom/nut/blehunter/ui/a/e;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 8142
    iget-object v1, v0, Lcom/nut/blehunter/ui/a/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 9102
    iget-object v0, v0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0}, Landroid/support/v7/widget/dy;->b()V

    .line 143
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    const v0, 0x7f060260

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":0\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f06025d

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":0\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f06025f

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":0\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f06025c

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":0\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const v0, 0x7f0d00a1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_connect_record"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10104
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 151
    :cond_1
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
