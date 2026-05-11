@echo on
setlocal EnableExtensions

set "FAIL=0"

call :check_inc git2.h || set FAIL=1
call :check_inc git2\annotated_commit.h || set FAIL=1
call :check_inc git2\attr.h || set FAIL=1
call :check_inc git2\blame.h || set FAIL=1
call :check_inc git2\blob.h || set FAIL=1
call :check_inc git2\branch.h || set FAIL=1
call :check_inc git2\buffer.h || set FAIL=1
call :check_inc git2\checkout.h || set FAIL=1
call :check_inc git2\apply.h || set FAIL=1
call :check_inc git2\cert.h || set FAIL=1
call :check_inc git2\cherrypick.h || set FAIL=1
call :check_inc git2\clone.h || set FAIL=1
call :check_inc git2\commit.h || set FAIL=1
call :check_inc git2\common.h || set FAIL=1
call :check_inc git2\config.h || set FAIL=1
call :check_inc git2\cred_helpers.h || set FAIL=1
call :check_inc git2\credential.h || set FAIL=1
call :check_inc git2\credential_helpers.h || set FAIL=1
call :check_inc git2\deprecated.h || set FAIL=1
call :check_inc git2\describe.h || set FAIL=1
call :check_inc git2\diff.h || set FAIL=1
call :check_inc git2\email.h || set FAIL=1
call :check_inc git2\errors.h || set FAIL=1
call :check_inc git2\experimental.h || set FAIL=1
call :check_inc git2\filter.h || set FAIL=1
call :check_inc git2\global.h || set FAIL=1
call :check_inc git2\graph.h || set FAIL=1
call :check_inc git2\ignore.h || set FAIL=1
call :check_inc git2\index.h || set FAIL=1
call :check_inc git2\indexer.h || set FAIL=1
call :check_inc git2\mailmap.h || set FAIL=1
call :check_inc git2\merge.h || set FAIL=1
call :check_inc git2\message.h || set FAIL=1
call :check_inc git2\net.h || set FAIL=1
call :check_inc git2\notes.h || set FAIL=1
call :check_inc git2\object.h || set FAIL=1
call :check_inc git2\odb.h || set FAIL=1
call :check_inc git2\odb_backend.h || set FAIL=1
call :check_inc git2\oid.h || set FAIL=1
call :check_inc git2\oidarray.h || set FAIL=1
call :check_inc git2\pack.h || set FAIL=1
call :check_inc git2\patch.h || set FAIL=1
call :check_inc git2\pathspec.h || set FAIL=1
call :check_inc git2\proxy.h || set FAIL=1
call :check_inc git2\rebase.h || set FAIL=1
call :check_inc git2\refdb.h || set FAIL=1
call :check_inc git2\reflog.h || set FAIL=1
call :check_inc git2\refs.h || set FAIL=1
call :check_inc git2\refspec.h || set FAIL=1
call :check_inc git2\remote.h || set FAIL=1
call :check_inc git2\repository.h || set FAIL=1
call :check_inc git2\reset.h || set FAIL=1
call :check_inc git2\revert.h || set FAIL=1
call :check_inc git2\revparse.h || set FAIL=1
call :check_inc git2\revwalk.h || set FAIL=1
call :check_inc git2\signature.h || set FAIL=1
call :check_inc git2\stash.h || set FAIL=1
call :check_inc git2\status.h || set FAIL=1
call :check_inc git2\stdint.h || set FAIL=1
call :check_inc git2\strarray.h || set FAIL=1
call :check_inc git2\submodule.h || set FAIL=1
call :check_inc git2\sys\alloc.h || set FAIL=1
call :check_inc git2\sys\commit.h || set FAIL=1
call :check_inc git2\sys\commit_graph.h || set FAIL=1
call :check_inc git2\sys\config.h || set FAIL=1
call :check_inc git2\sys\cred.h || set FAIL=1
call :check_inc git2\sys\credential.h || set FAIL=1
call :check_inc git2\sys\diff.h || set FAIL=1
call :check_inc git2\sys\email.h || set FAIL=1
call :check_inc git2\sys\errors.h || set FAIL=1
call :check_inc git2\sys\filter.h || set FAIL=1
call :check_inc git2\sys\hashsig.h || set FAIL=1
call :check_inc git2\sys\index.h || set FAIL=1
call :check_inc git2\sys\mempack.h || set FAIL=1
call :check_inc git2\sys\merge.h || set FAIL=1
call :check_inc git2\sys\midx.h || set FAIL=1
call :check_inc git2\sys\odb_backend.h || set FAIL=1
call :check_inc git2\sys\openssl.h || set FAIL=1
call :check_inc git2\sys\path.h || set FAIL=1
call :check_inc git2\sys\refdb_backend.h || set FAIL=1
call :check_inc git2\sys\refs.h || set FAIL=1
call :check_inc git2\sys\remote.h || set FAIL=1
call :check_inc git2\sys\repository.h || set FAIL=1
call :check_inc git2\sys\stream.h || set FAIL=1
call :check_inc git2\sys\transport.h || set FAIL=1
call :check_inc git2\tag.h || set FAIL=1
call :check_inc git2\trace.h || set FAIL=1
call :check_inc git2\transaction.h || set FAIL=1
call :check_inc git2\transport.h || set FAIL=1
call :check_inc git2\tree.h || set FAIL=1
call :check_inc git2\types.h || set FAIL=1
call :check_inc git2\version.h || set FAIL=1
call :check_inc git2\worktree.h || set FAIL=1

if not exist "%LIBRARY_BIN%\git2.dll" set FAIL=1
if not exist "%LIBRARY_LIB%\git2.lib" set FAIL=1

if "%FAIL%"=="1" exit /b 1
exit /b 0

:check_inc
if not exist "%LIBRARY_INC%\%~1" exit /b 1
exit /b 0
