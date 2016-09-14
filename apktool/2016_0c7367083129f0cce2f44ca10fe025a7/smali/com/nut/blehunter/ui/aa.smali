.class final Lcom/nut/blehunter/ui/aa;
.super Landroid/os/AsyncTask;
.source "ConnectRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ConnectRecordActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ConnectRecordActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nut/blehunter/ui/aa;->a:Lcom/nut/blehunter/ui/ConnectRecordActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()[I
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 68
    const/4 v0, 0x4

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 69
    iget-object v0, p0, Lcom/nut/blehunter/ui/aa;->a:Lcom/nut/blehunter/ui/ConnectRecordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->a(Lcom/nut/blehunter/ui/ConnectRecordActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/q;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v2

    .line 1144
    iget-object v2, v2, Lcom/nut/blehunter/NutTrackerApplication;->c:Ljava/lang/String;

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 75
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/nut/blehunter/ui/aa;->a:Lcom/nut/blehunter/ui/ConnectRecordActivity;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->a:Lcom/nut/blehunter/ui/a/e;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/a/e;->b()I

    move-result v7

    move v2, v3

    .line 77
    :goto_0
    if-ge v2, v7, :cond_1

    .line 78
    iget-object v0, p0, Lcom/nut/blehunter/ui/aa;->a:Lcom/nut/blehunter/ui/ConnectRecordActivity;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ConnectRecordActivity;->a:Lcom/nut/blehunter/ui/a/e;

    .line 2137
    iget-object v0, v0, Lcom/nut/blehunter/ui/a/e;->c:Ljava/util/List;

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 80
    aget-byte v1, v0, v3

    packed-switch v1, :pswitch_data_0

    .line 101
    const v1, 0x7f060261

    .line 103
    :goto_1
    new-array v8, v13, [B

    .line 104
    invoke-static {v0, v12, v8, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    invoke-static {v8}, Lcom/nut/blehunter/d/q;->b([B)J

    move-result-wide v8

    .line 106
    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/nut/blehunter/d/e;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v8, p0, Lcom/nut/blehunter/ui/aa;->a:Lcom/nut/blehunter/ui/ConnectRecordActivity;

    invoke-virtual {v8, v1}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "        "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 82
    :pswitch_0
    const v1, 0x7f060260

    .line 83
    aget v8, v4, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v4, v3

    goto :goto_1

    .line 86
    :pswitch_1
    const v1, 0x7f06025d

    .line 87
    aget v8, v4, v12

    add-int/lit8 v8, v8, 0x1

    aput v8, v4, v12

    goto :goto_1

    .line 90
    :pswitch_2
    const v1, 0x7f06025f

    .line 91
    const/4 v8, 0x2

    aget v9, v4, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v4, v8

    goto :goto_1

    .line 94
    :pswitch_3
    const v1, 0x7f06025c

    .line 95
    const/4 v8, 0x3

    aget v9, v4, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v4, v8

    goto :goto_1

    .line 98
    :pswitch_4
    const v1, 0x7f06025a

    .line 99
    goto :goto_1

    .line 110
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/nut/blehunter/d/d;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_2
    return-object v4

    .line 112
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 68
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/nut/blehunter/ui/aa;->a()[I

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 65
    check-cast p1, [I

    .line 3119
    iget-object v0, p0, Lcom/nut/blehunter/ui/aa;->a:Lcom/nut/blehunter/ui/ConnectRecordActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3123
    iget-object v0, p0, Lcom/nut/blehunter/ui/aa;->a:Lcom/nut/blehunter/ui/ConnectRecordActivity;

    const v2, 0x7f060260

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/aa;->a:Lcom/nut/blehunter/ui/ConnectRecordActivity;

    const v3, 0x7f06025d

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/aa;->a:Lcom/nut/blehunter/ui/ConnectRecordActivity;

    const v3, 0x7f06025f

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/aa;->a:Lcom/nut/blehunter/ui/ConnectRecordActivity;

    const v3, 0x7f06025c

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x3

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3128
    iget-object v0, p0, Lcom/nut/blehunter/ui/aa;->a:Lcom/nut/blehunter/ui/ConnectRecordActivity;

    const v2, 0x7f0d00a1

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/ui/ConnectRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    return-void
.end method
