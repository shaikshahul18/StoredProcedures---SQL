/*USE DoctorWho;*/

CREATE PROC spMoffats
AS 
BEGIN
	SELECT a.AuthorName,b.EpisodeId,b.EpisodeDate
	FROM tblAuthor AS a
	RIGHT JOIN tblEpisode AS b
	ON a.AuthorId = b.AuthorId
	WHERE a.AuthorName = 'Steven Moffat'
	ORDER BY b.EpisodeDate DESC;
END;

EXEC spMoffats;