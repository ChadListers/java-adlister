<title>${param.title}</title>
<%--<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">--%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100&display=swap" rel="stylesheet">
<%--<link rel="stylesheet" href="css/navbar.css">--%>


<style>

    html, body
    {
        margin: 0px;
    }

    header, footer
    {
        font-family: Raleway;
        margin: 0 auto;
        padding: 5em 3em;
        text-align: center;
        background: #555;
    }

    header h1
    {
        color: #AAA;
        font-size: 40px;
        font-weight: lighter;
        margin-bottom: 5px;
    }

    header span
    {
        color: #222;
    }

    footer span
    {
        color: #AAA;
    }

    div.container
    {
        font-family: Raleway;
        margin: 0 auto;
        padding: 3em 3em;
        text-align: center;
    }

    div.container a
    {
        color: #FFF;
        text-decoration: none;
        font: 20px Raleway;
        margin: 0px 10px;
        padding: 10px 10px;
        position: relative;
        z-index: 0;
        cursor: pointer;
    }

    .indigo
    {
        background: #3f51b5;
    }

    /* Top and Bottom borders come in */
    div.topBotomBordersIn a:before, div.topBotomBordersIn a:after
    {
        position: absolute;
        left: 0px;
        width: 100%;
        height: 2px;
        background: #FFF;
        content: "";
        opacity: 0;
        transition: all 0.3s;
    }

    div.topBotomBordersIn a:before
    {
        top: 0px;
        transform: translateY(-10px);
    }

    div.topBotomBordersIn a:after
    {
        bottom: 0px;
        transform: translateY(10px);
    }

    div.topBotomBordersIn a:hover:before, div.topBotomBordersIn a:hover:after
    {
        opacity: 1;
        transform: translateY(0px);
    }

</style>