.class public Lmiui/util/ErrorReportUtils$ReportErrorTask;
.super Landroid/os/AsyncTask;
.source "ErrorReportUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ErrorReportUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportErrorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mJsPost:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "jsPost"

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 109
    iput-object p1, p0, Lmiui/util/ErrorReportUtils$ReportErrorTask;->mJsPost:Lorg/json/JSONObject;

    .line 110
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/util/ErrorReportUtils$ReportErrorTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "params"

    .prologue
    .line 115
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    const-string v9, "http://api.chat.xiaomi.net/v2/miui/feedback"

    invoke-direct {v4, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 116
    .local v4, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v9, "Content-Type"

    const-string v10, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 119
    .local v5, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "error"

    iget-object v11, p0, Lmiui/util/ErrorReportUtils$ReportErrorTask;->mJsPost:Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 120
    #calls: Lmiui/util/ErrorReportUtils;->getKeyFromParams(Ljava/util/List;)Ljava/lang/String;
    invoke-static {v5}, Lmiui/util/ErrorReportUtils;->access$000(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, md5:Ljava/lang/String;
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "s"

    invoke-direct {v9, v10, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "UTF-8"

    invoke-direct {v2, v5, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 124
    .local v2, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 127
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 128
    .local v3, httpParameters:Lorg/apache/http/params/HttpParams;
    const/16 v9, 0xbb8

    invoke-static {v3, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 129
    const/16 v9, 0x1388

    invoke-static {v3, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 130
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 131
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 132
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 133
    .local v8, status:I
    const/16 v9, 0xc8

    if-eq v8, v9, :cond_0

    .line 134
    const-class v9, Lmiui/util/ErrorReportUtils$ReportErrorTask;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to report errors to miui. status code:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 145
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v3           #httpParameters:Lorg/apache/http/params/HttpParams;
    .end local v4           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v5           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #md5:Ljava/lang/String;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #status:I
    :cond_0
    :goto_0
    const/4 v9, 0x0

    return-object v9

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 140
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 142
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
