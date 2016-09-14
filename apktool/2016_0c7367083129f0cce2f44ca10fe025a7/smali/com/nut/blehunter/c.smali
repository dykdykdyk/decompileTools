.class public final Lcom/nut/blehunter/c;
.super Landroid/os/AsyncTask;
.source "DownloadAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/nut/blehunter/c;->a:Landroid/content/Context;

    .line 1038
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/nut/blehunter/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nut/blehunter/c;->b:Landroid/app/ProgressDialog;

    .line 1039
    iget-object v0, p0, Lcom/nut/blehunter/c;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/nut/blehunter/c;->a:Landroid/content/Context;

    const v2, 0x7f0600d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1040
    iget-object v0, p0, Lcom/nut/blehunter/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1041
    iget-object v0, p0, Lcom/nut/blehunter/c;->b:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1042
    iget-object v0, p0, Lcom/nut/blehunter/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1043
    iget-object v0, p0, Lcom/nut/blehunter/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1044
    iget-object v0, p0, Lcom/nut/blehunter/c;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1045
    iget-object v0, p0, Lcom/nut/blehunter/c;->b:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/nut/blehunter/d;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/d;-><init>(Lcom/nut/blehunter/c;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 35
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/nut/blehunter/c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1135
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1136
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Download/"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1138
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1143
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/nut.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 78
    const/16 v2, 0x4e20

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 79
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 81
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_3

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download connection response is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    const/4 v0, 0x0

    goto :goto_0

    .line 1141
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 85
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    .line 86
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 87
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 89
    const/16 v0, 0x400

    new-array v9, v0, [B

    .line 90
    const-wide/16 v2, 0x0

    .line 92
    const/4 v0, -0x1

    move-wide v4, v2

    move v2, v0

    .line 94
    :goto_2
    invoke-virtual {v7, v9}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_4

    .line 95
    int-to-long v10, v3

    add-long/2addr v4, v10

    .line 96
    const-wide/16 v10, 0x64

    mul-long/2addr v10, v4

    int-to-long v12, v6

    div-long/2addr v10, v12

    long-to-int v0, v10

    .line 97
    if-eq v2, v0, :cond_5

    .line 99
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v10

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/c;->publishProgress([Ljava/lang/Object;)V

    .line 101
    :goto_3
    const/4 v2, 0x0

    invoke-virtual {v8, v9, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    move v2, v0

    goto :goto_2

    .line 103
    :cond_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 104
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 105
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 106
    goto/16 :goto_0

    .line 108
    :catch_0
    move-exception v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 108
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_3
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nut/blehunter/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 25
    check-cast p1, Ljava/lang/String;

    .line 2115
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2116
    invoke-virtual {p0}, Lcom/nut/blehunter/c;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2119
    iget-object v0, p0, Lcom/nut/blehunter/c;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/nut/blehunter/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2122
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2123
    iget-object v0, p0, Lcom/nut/blehunter/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/nut/blehunter/c;->a:Landroid/content/Context;

    const v2, 0x7f0600d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3039
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 2123
    :cond_1
    :goto_0
    return-void

    .line 2125
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2126
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2127
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2129
    iget-object v1, p0, Lcom/nut/blehunter/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 56
    invoke-virtual {p0}, Lcom/nut/blehunter/c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    check-cast p1, [Ljava/lang/Integer;

    .line 2064
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 2065
    iget-object v0, p0, Lcom/nut/blehunter/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2066
    iget-object v0, p0, Lcom/nut/blehunter/c;->b:Landroid/app/ProgressDialog;

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 25
    return-void
.end method
